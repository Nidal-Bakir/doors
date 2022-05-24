import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:doors/core/errors/server_error.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;

part 'file_downloader_event.dart';
part 'file_downloader_state.dart';
part 'file_downloader_bloc.freezed.dart';

class FileDownloaderBloc
    extends Bloc<FileDownloaderEvent, FileDownloaderState> {
  FileDownloaderBloc() : super(const FileDownloaderInitial()) {
    on<FileDownloaderEvent>(
      (event, emit) async {
        await event.map(
            fileDownloaded: (event) async =>
                await _onFileDownloaded(event, emit),
            cachedFileLoaded: (event) async =>
                await _onCachedFileLoaded(event, emit));
      },
      transformer: bloc_concurrency.restartable(),
    );
  }

  Future<void> _onFileDownloaded(
    FileDownloaderFileDownloaded event,
    Emitter<FileDownloaderState> emit,
  ) async {
    // // TODO: rmove this line when new version of pares flutter sdk relesed
    // // and fixes the dio bug not calling progressCallback
    emit(const FileDownloaderDownloadInProgress(1, 1));
    await event.file.download(
      progressCallback: (count, total) {
        emit(FileDownloaderDownloadInProgress(count, total));
      },
    ).then(
      (ParseFile parseFile) {
        emit(FileDownloaderDownloadSuccess(parseFile));
      },
      onError: (error) {
        emit(
          FileDownloaderDownloadFailure(
            NoConnectionException(
              'can not upload the file to parse server.'
                      '\n Error: ' +
                  error.toString(),
            ),
          ),
        );
      },
    );
  }

  Future<void> _onCachedFileLoaded(FileDownloaderCachedFileLoaded event,
      Emitter<FileDownloaderState> emit) async {
    File cachedFile = File(
      '${ParseCoreData().fileDirectory}/${event.file.name}',
    );
    if (await cachedFile.exists()) {
      ParseFile cachedParseFile = ParseFile(cachedFile);
      emit(FileDownloaderDownloadSuccess(cachedParseFile));
    }
  }
}
