import 'dart:io';

import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/features/file_manager/file_uploader/presentation/managers/file_uploader_bloc/file_uploader_bloc.dart';
import 'package:doors/core/widgets/sized_box_16_h.dart';
import 'package:doors/features/job_application/presentation/managers/send_job_application_bloc/send_job_application_bloc.dart';
import 'package:doors/features/resume_creator/presentation/screens/resume_creator_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:file_picker/file_picker.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class UploadAndCreateCVButtons extends StatefulWidget {
  const UploadAndCreateCVButtons({
    Key? key,
  }) : super(key: key);

  @override
  State<UploadAndCreateCVButtons> createState() =>
      _UploadAndCreateCVButtonsState();
}

class _UploadAndCreateCVButtonsState extends State<UploadAndCreateCVButtons> {
  File? selectedCVFile;

  late String _buttonLabel = context.loc.upload;

  @override
  Widget build(BuildContext context) {
    final _fileUploaderBlocState = context.watch<FileUploaderBloc>().state;

    final _sendJobApplicationBlocState =
        context.watch<FileUploaderBloc>().state;

    var _isUploading = _fileUploaderBlocState is FileUploaderUploadInProgress ||
        _sendJobApplicationBlocState is SendJobApplicationInProgress;

    if (_fileUploaderBlocState is FileUploaderFileSelectingSuccess) {
      _buttonLabel = context.loc.start_uploading;
      selectedCVFile = _fileUploaderBlocState.selectedFile;
    }

    if (_fileUploaderBlocState is FileUploaderInitial ||
        selectedCVFile == null) {
      selectedCVFile = null;
      _buttonLabel = context.loc.upload;
    }

    return Align(
      alignment: Alignment.center,
      child: SizedBox(
        width: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
              child: Text(_buttonLabel),
              onPressed: _isUploading ? null : () => _onUploadPressed(context),
            ),
            ElevatedButton(
              child: Text(context.loc.create),
              onPressed: _isUploading ? null : _onCreatePressed,
            ),
            const SizedBox16H(),
          ],
        ),
      ),
    );
  }

  void _onCreatePressed() async {
    final createdPdfFile = await Navigator.of(context).pushNamed<File?>(
      ResumeCreatorScreen.routeName,
    );
    if (createdPdfFile != null) {
      context.read<FileUploaderBloc>().add(
            FileUploaderFileSelected(
              createdPdfFile,
            ),
          );
    }
  }

  void _onUploadPressed(BuildContext context) async {
    if (selectedCVFile == null) {
      context.read<FileUploaderBloc>().add(
            const FileUploaderFileManagerOpened(
              ['pdf'],
              FileType.custom,
            ),
          );
    } else {
      context.read<FileUploaderBloc>().add(
            FileUploaderFileUploaded(
              ParseFile(selectedCVFile),
            ),
          );
    }
  }
}
