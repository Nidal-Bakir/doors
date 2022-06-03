import 'dart:io';
import 'dart:typed_data';

import 'package:dartz/dartz.dart';
import 'package:doors/core/errors/user_error.dart';
import 'package:doors/features/resume_creator/data/base_pdf_creator.dart';

class ResumeCreatorRepository {
  final BasePdfCreator pdfCreator;

  ResumeCreatorRepository(this.pdfCreator);

  Future<Either<UserException, File>> createPdfResume(dynamic argument) async {
    final Uint8List pdfByteData;
    try {
      pdfByteData = await pdfCreator.createPdf(argument);
    } catch (error) {
      return Left(
        UnknownError(
          'error while creating the pdf \nError: $error',
        ),
      );
    }
    try {
      return Right(await pdfCreator.savePdfFile(pdfByteData));
    } catch (error) {
      return Left(
        ErrorWhileSavingTheFile(
          'error while saving the created pdf to local app dir \nError: $error',
        ),
      );
    }
  }
}
