import 'dart:io';

import 'package:doors/core/features/file_manager/file_uploader/presentation/managers/file_uploader_bloc/file_uploader_bloc.dart';
import 'package:doors/core/utils/global_functions/global_functions.dart';
import 'package:doors/features/job_application/presentation/managers/send_job_application_bloc/send_job_application_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path/path.dart' as path;

class SelectedCVInfo extends StatefulWidget {
  const SelectedCVInfo({
    Key? key,
  }) : super(key: key);

  @override
  State<SelectedCVInfo> createState() => _SelectedCVInfoState();
}

class _SelectedCVInfoState extends State<SelectedCVInfo> {
  File? selectedCVFile;
  @override
  Widget build(BuildContext context) {
    final _fileUploaderBlocState = context.watch<FileUploaderBloc>().state;

    final _sendJobApplicationBlocState =
        context.watch<FileUploaderBloc>().state;

    var _isUploading = _fileUploaderBlocState is FileUploaderUploadInProgress ||
        _sendJobApplicationBlocState is SendJobApplicationInProgress;

    if (_fileUploaderBlocState is FileUploaderFileSelectingSuccess) {
      selectedCVFile = _fileUploaderBlocState.selectedFile;
    }
    
    if (_fileUploaderBlocState is FileUploaderInitial ||
        selectedCVFile == null) {
      return const SizedBox.shrink();
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Row(
            children: [
              Image.asset(
                'assets/icons/pdf-icon.png',
                height: 25,
                cacheHeight: 25,
              ),
              const SizedBox(
                width: 8,
              ),
              Flexible(child: Text(path.basename(selectedCVFile!.path))),
            ],
          ),
        ),
        Flexible(
          child: FutureBuilder<String>(
            future: getFileSize(selectedCVFile!.path, 1),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data ?? '');
              }
              return const SizedBox.shrink();
            },
          ),
        ),
        IconButton(
          onPressed: _isUploading
              ? null
              : () {
                  context.read<FileUploaderBloc>().add(
                        FileUploaderSelectedFileCanceled(selectedCVFile!),
                      );
                },
          icon: const Icon(Icons.highlight_remove_sharp),
        )
      ],
    );
  }
}
