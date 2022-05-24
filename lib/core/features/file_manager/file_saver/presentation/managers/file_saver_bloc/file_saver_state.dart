part of 'file_saver_bloc.dart';

@freezed
class FileSaverState with _$FileSaverState {
  const factory FileSaverState.initial() = FileSaverInitial;

  const factory FileSaverState.saveInProgress() = FileSaverInProgress;

  const factory FileSaverState.saveSuccess(File savedFile) =
      FileSaverSaveSuccess;
      
  const factory FileSaverState.saveFailure(UserException error) =
      FileSaverSaveFailure;
}
