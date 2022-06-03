import 'dart:typed_data';

import 'package:doors/features/resume_creator/data/base_pdf_creator.dart';
import 'package:doors/features/resume_creator/models/resume_data.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

const PdfColor _darkBlue = PdfColor.fromInt(0xff1f3864);
const PdfColor _lightBlue = PdfColor.fromInt(0xffb8cce4);

class BasicResumePdfCreator extends BasePdfCreator<ResumeData> {
  BasicResumePdfCreator() : super('basicPdf');

  @override
  Future<Uint8List> createPdf(ResumeData argument) async {
    final resumeData = argument;
    final iconFont = await PdfGoogleFonts.materialIcons();
    final doc = pw.Document(
      title: 'Resume',
      author: resumeData.userBasicInfo.name,
      creator: 'Doors App',
      producer: 'Doors App',
      subject: 'Job application',
      theme: pw.ThemeData.withFont(
        base: await PdfGoogleFonts.openSansRegular(),
        bold: await PdfGoogleFonts.openSansBold(),
        icons: iconFont,
      ),
    );

    pw.MemoryImage? profileImage;
    if (resumeData.userBasicInfo.profileImage != null) {
      profileImage = pw.MemoryImage(
        await resumeData.userBasicInfo.profileImage!.readAsBytes(),
      );
    }

    final pageTheme = await _resumePageTheme(PdfPageFormat.a4);

    doc.addPage(
      pw.MultiPage(
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        pageTheme: pageTheme,
        build: (context) {
          return [
            pw.Partition(
              child: pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: [
                  _ResumeHeader(
                    resumeData.userBasicInfo,
                    iconFont,
                  ),
                  pw.Container(
                    margin: const pw.EdgeInsets.symmetric(
                      horizontal: 1.75 * PdfPageFormat.cm,
                      vertical: 0.35 * PdfPageFormat.cm,
                    ),
                    child: pw.Column(
                      crossAxisAlignment: pw.CrossAxisAlignment.start,
                      mainAxisSize: pw.MainAxisSize.min,
                      children: [
                        if (resumeData.resumeHeadLineLabel != null)
                          _ResumeHeadLine(resumeData.resumeHeadLineLabel!),
                        if (resumeData.resumeSections.isNotEmpty)
                          _ResumePersonalInfoSection(
                            resumeData.resumeSections.first,
                            profileImage,
                          ),
                        for (var category in resumeData.resumeSections.skip(1))
                          _ResumeSection(category)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ];
        },
      ),
    );

    return doc.save();
  }

  Future<pw.PageTheme> _resumePageTheme(PdfPageFormat format) async {
    const double _kDefaultFontSize = 11.0 * PdfPageFormat.point;

    final headLineTextStyle = pw.TextStyle(
        color: _darkBlue,
        fontWeight: pw.FontWeight.bold,
        fontSize: _kDefaultFontSize * 1.65,
        font: await PdfGoogleFonts.openSansBold());

    final categoryTextStyle = pw.TextStyle(
        color: _darkBlue,
        fontSize: _kDefaultFontSize * 1.1,
        fontWeight: pw.FontWeight.bold,
        font: await PdfGoogleFonts.openSansBold());

    final nameTextStyle = pw.TextStyle(
        fontSize: _kDefaultFontSize * 1.2,
        fontWeight: pw.FontWeight.bold,
        font: await PdfGoogleFonts.openSansBold());

    final defaultTextStyle = pw.TextStyle(
        fontSize: _kDefaultFontSize,
        font: await PdfGoogleFonts.openSansRegular());

    return pw.PageTheme(
      margin: const pw.EdgeInsets.symmetric(
        horizontal: 0.6 * PdfPageFormat.cm,
        vertical: 1.5 * PdfPageFormat.cm,
      ),
      pageFormat: format,
      theme: pw.ThemeData(
        header5: categoryTextStyle,
        header4: nameTextStyle,
        header3: headLineTextStyle,
        defaultTextStyle: defaultTextStyle,
      ),
      textDirection: pw.TextDirection.ltr,
    );
  }
}

class _ResumeHeader extends pw.StatelessWidget {
  final pw.Font iconFont;
  final ResumeUserBasicInfo resumeUserBasicInfo;

  _ResumeHeader(
    this.resumeUserBasicInfo,
    this.iconFont,
  );
  @override
  pw.Widget build(pw.Context context) {
    return pw.Align(
      alignment: pw.Alignment.center,
      child: pw.Column(
        children: [
          pw.Text(
            resumeUserBasicInfo.name,
            style: pw.Theme.of(context).header4,
          ),
          pw.Text(resumeUserBasicInfo.currentResidence!),
          pw.Row(
            mainAxisAlignment: pw.MainAxisAlignment.center,
            children: [
              if (resumeUserBasicInfo.phoneNumber != null)
                pw.Icon(
                  const pw.IconData(
                    0xE0B0,
                  ),
                  font: iconFont,
                  size: 0.5 * PdfPageFormat.cm,
                ),
                if (resumeUserBasicInfo.phoneNumber != null)
                  pw.Text(' ${resumeUserBasicInfo.phoneNumber} | '),
              pw.Icon(
                const pw.IconData(
                  0xE0E6,
                ),
                font: iconFont,
                size: 0.5 * PdfPageFormat.cm,
              ),
              pw.Text(' ${resumeUserBasicInfo.email}'),
            ],
          ),
          pw.Divider(color: _lightBlue, thickness: 3),
        ],
      ),
    );
  }
}

class _ResumeHeadLine extends pw.StatelessWidget {
  final String headLine;

  _ResumeHeadLine(this.headLine);
  @override
  pw.Widget build(pw.Context context) {
    return pw.Text(
      headLine,
      style: pw.Theme.of(context).header3,
    );
  }
}

class _SectionLabel extends pw.StatelessWidget {
  final String label;

  _SectionLabel(this.label);
  @override
  pw.Widget build(pw.Context context) {
    return pw.LayoutBuilder(
      builder: (context, constraints) {
        return pw.SizedBox(
          width: constraints!.maxWidth,
          child: pw.Stack(
            alignment: pw.Alignment.topLeft,
            children: [
              pw.Text(
                label,
                style: pw.Theme.of(context).header5,
              ),
              pw.Positioned.fill(
                top: 0.57 * PdfPageFormat.cm,
                child: pw.Divider(
                  color: _lightBlue,
                  thickness: 1,
                ),
              )
            ],
          ),
        );
      },
    );
  }
}

class _ResumePersonalInfoSection extends pw.StatelessWidget {
  final ResumeSection resumeSection;
  final pw.MemoryImage? profileImage;

  _ResumePersonalInfoSection(this.resumeSection, this.profileImage);

  @override
  pw.Widget build(pw.Context context) {
    return pw.Container(
      margin: const pw.EdgeInsets.only(top: 0.7 * PdfPageFormat.cm),
      child: pw.Column(
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: [
          _SectionLabel(
            resumeSection.label,
          ),
          pw.Container(
            margin: const pw.EdgeInsets.only(top: 0.5 * PdfPageFormat.cm),
            child: pw.Row(
              mainAxisAlignment: pw.MainAxisAlignment.spaceBetween,
              crossAxisAlignment: pw.CrossAxisAlignment.start,
              children: [
                pw.Expanded(
                  child: pw.Table(
                    columnWidths: {
                      0: const pw.FractionColumnWidth(
                        0.45
                      ),
                      1: const pw.FractionColumnWidth(
                        0.55
                      ),
                    },
                    children: [
                      for (var sub in resumeSection.sectionSubdivisions)
                        _sectionSubdivision(context, sub),
                    ],
                  ),
                ),
                pw.Container(
                  margin: const pw.EdgeInsets.only(left:1 * PdfPageFormat.cm ),
                  child: profileImage != null
                      ? pw.Image(
                          profileImage!,
                          fit: pw.BoxFit.cover,
                          height: 4.0* PdfPageFormat.cm,
                          width: 3.0 * PdfPageFormat.cm,
                        )
                      : pw.SizedBox(
                          
                          width: 3.0 * PdfPageFormat.cm,
                        ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _ResumeSection extends pw.StatelessWidget {
  final ResumeSection resumeSection;

  _ResumeSection(this.resumeSection);

  @override
  pw.Widget build(pw.Context context) {
    return pw.Container(
      margin: const pw.EdgeInsets.only(top: 0.7 * PdfPageFormat.cm),
      child: pw.Column(
        crossAxisAlignment: pw.CrossAxisAlignment.start,
        children: [
          _SectionLabel(
            resumeSection.label,
          ),
          pw.Table(
            columnWidths: {
              0: const pw.FractionColumnWidth(0.35),
              1: const pw.FractionColumnWidth(0.65),
            },
            children: [
              for (var sub in resumeSection.sectionSubdivisions)
                _sectionSubdivision(context, sub),
            ],
          ),
        ],
      ),
    );
  }
}

pw.TableRow _sectionSubdivision(
  pw.Context context,
  SectionSubdivision subdivision,
) {
  return pw.TableRow(
    children: [
      pw.Container(
        margin: const pw.EdgeInsets.only(top: 0.35 * PdfPageFormat.cm),
        child: pw.Text(
          subdivision.label!,
        ),
      ),
      pw.Container(
        margin: const pw.EdgeInsets.only(top: 0.35 * PdfPageFormat.cm),
        child: pw.Text(
          subdivision.paragraph!,
        ),
      ),
    ],
  );
}
