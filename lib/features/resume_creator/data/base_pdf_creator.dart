import 'dart:io';
import 'dart:typed_data';
import 'package:doors/core/utils/global_functions/global_functions.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

abstract class BasePdfCreator<T> {
  final String pdfFileName;

  BasePdfCreator(this.pdfFileName);

  Future<Uint8List> createPdf(T argument);

  Future<File> savePdfFile(
    Uint8List pdfByteData, [
    String? customPdfFileName,
  ]) async {
    const pdfExt = '.pdf';

    var _pdfFileName = customPdfFileName ?? pdfFileName.trim();

    // the file name should end with .pdf extension
    final _pdfFileNameWithExt =
        _pdfFileName.endsWith(pdfExt) ? _pdfFileName : _pdfFileName + pdfExt;

    final tempDirPath = (await path_provider.getTemporaryDirectory()).path;

    final uniqueFileName = await getNonDuplicatedFileNameInDir(
      tempDirPath + '/' + _pdfFileNameWithExt,
    );

    final file = File(tempDirPath + '/' + uniqueFileName);

    return file.writeAsBytes(pdfByteData);
  }
}
