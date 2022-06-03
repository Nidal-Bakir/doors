part of 'file_saver_bloc.dart';

@freezed
class FileSaverEvent with _$FileSaverEvent {
  const factory FileSaverEvent.fileSaved(File file,AppFolder appFolder) = FileSaverFileSaved;
}