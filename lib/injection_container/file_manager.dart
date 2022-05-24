import 'package:doors/core/features/file_manager/file_downloader/presentation/managers/file_downloader_bloc/file_downloader_bloc.dart';
import 'package:doors/core/features/file_manager/file_saver/data/file_saver_local_data_source.dart';
import 'package:doors/core/features/file_manager/file_saver/presentation/managers/file_saver_bloc/file_saver_bloc.dart';
import 'package:doors/core/features/file_manager/file_saver/repository/file_saver_repository.dart';
import 'package:doors/core/features/file_manager/file_uploader/data/file_uploader_local_data_source/file_uploader_local_data_source.dart';
import 'package:doors/core/features/file_manager/file_uploader/presentation/managers/file_uploader_bloc/file_uploader_bloc.dart';
import 'package:doors/core/features/file_manager/file_uploader/repository/file_uploader_repository.dart';
import 'package:get_it/get_it.dart';

final di = GetIt.I;
void fileManagerInit() {
  // blocs
  di.registerFactory<FileUploaderBloc>(() => FileUploaderBloc(di.get()));

  di.registerFactory<FileDownloaderBloc>(() => FileDownloaderBloc());

  di.registerFactory<FileSaverBloc>(() => FileSaverBloc(di.get()));

  // repositories
  di.registerLazySingleton<FileUploaderRepository>(
      () => FileUploaderRepository(di.get()));

  di.registerLazySingleton<FileSaverRepository>(
      () => FileSaverRepository(di.get()));

  // data source
  di.registerLazySingleton<FileUploaderLocalDataSource>(
      () => FileUploaderLocalDataSourceImpl());

  di.registerLazySingleton<FileSaverLocalDataSource>(
      () => FileSaverLocalDataSourceImpl());
}
