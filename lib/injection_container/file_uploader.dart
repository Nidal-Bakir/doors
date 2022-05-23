import 'package:doors/core/features/file_uploader/data/file_uploader_local_data_source/file_uploader_local_data_source.dart';
import 'package:doors/core/features/file_uploader/presentation/managers/file_uploader_bloc/file_uploader_bloc.dart';
import 'package:doors/core/features/file_uploader/repository/file_uploader_repository.dart';
import 'package:get_it/get_it.dart';

final di = GetIt.I;
void fileUploaderInit() {
  // blocs
  di.registerFactory<FileUploaderBloc>(() => FileUploaderBloc(di.get()));

  // repositories
  di.registerLazySingleton<FileUploaderRepository>(
      () => FileUploaderRepository(di.get()));

  // data source
  di.registerLazySingleton<FileUploaderLocalDataSource>(
      () => FileUploaderLocalDataSourceImpl());
}
