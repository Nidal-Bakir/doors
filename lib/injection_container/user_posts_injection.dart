import 'package:doors/core/features/user_posts/data/user_posts_local_data_source/user_posts_local_data_source.dart';
import 'package:doors/core/features/user_posts/data/user_posts_remote_data_source/user_posts_remote_data_source.dart';
import 'package:doors/core/features/user_posts/presentation/managers/user_posts_bloc/user_posts_bloc.dart';
import 'package:doors/core/features/user_posts/repository/user_posts_repository.dart';
import 'package:get_it/get_it.dart';

final di = GetIt.I;
void userPostsInit() {
  // blocs
  di.registerFactory<UserPostsBloc>(() => UserPostsBloc(di.get()));

  // repositories
  di.registerLazySingleton<UserPostsRepository>(
      () => UserPostsRepository(di.get(), di.get()));

  // data sources
  di.registerLazySingleton<UserPostsRemoteDataSource>(
      () => UserPostsRemoteDataSourceImpl());
      
  di.registerFactory<UserPostsLocalDataSource>(
      () => UserPostsLocalDataSourceImpl());
}
