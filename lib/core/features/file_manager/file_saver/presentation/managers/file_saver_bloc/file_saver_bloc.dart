import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/errors/user_error.dart';
import 'package:doors/core/features/file_manager/file_saver/repository/file_saver_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'file_saver_event.dart';
part 'file_saver_state.dart';
part 'file_saver_bloc.freezed.dart';

class FileSaverBloc extends Bloc<FileSaverEvent, FileSaverState> {
  final FileSaverRepository _fileSaverRepository;
  FileSaverBloc(this._fileSaverRepository) : super(const FileSaverInitial()) {
    on<FileSaverEvent>(
      (event, emit) async {
        await event.map(
          fileSaved: (event) => _onFileSaved(event, emit),
        );
      },
    );
  }

  Future<void> _onFileSaved(
      FileSaverFileSaved event, Emitter<FileSaverState> emit) async {
    emit(const FileSaverInProgress());

    final fileSaverResult = await _fileSaverRepository.savedFile(
      event.file,
      event.appFolder,
    );

    fileSaverResult.fold(
      (error) => emit(FileSaverSaveFailure(error)),
      (savedFile) => emit(FileSaverSaveSuccess(savedFile)),
    );
  }
}
