import 'package:doors/features/manage_post/data/create_post_remote_data_source/manage_post_remote_data_source.dart';
import 'package:doors/features/manage_post/presentation/managers/manage_post_bloc/manage_post_bloc.dart';
import 'package:doors/features/manage_post/repository/manage_post_repository.dart';
import 'package:get_it/get_it.dart';

final di = GetIt.I;
void managePostInit() {
  // blocs
  di.registerFactory<ManagePostBloc>(() => ManagePostBloc(di.get()));

  // repositories
  di.registerLazySingleton<ManagePostsRepository>(
      () => ManagePostsRepository(di.get()));

  // data sources
  di.registerLazySingleton<ManagePostRemoteDataSource>(
      () => ManagePostRemoteDataSourceImpl());
}
