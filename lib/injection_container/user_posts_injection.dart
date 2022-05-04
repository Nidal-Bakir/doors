import 'package:doors/features/manage_post/presentation/managers/manage_post_bloc/manage_post_bloc.dart';
import 'package:doors/features/user_posts/data/user_posts_local_data_source/user_posts_local_data_source.dart';
import 'package:doors/features/user_posts/data/user_posts_remote_data_source/user_posts_remote_data_source.dart';
import 'package:doors/features/user_posts/presentation/managers/user_posts_bloc/user_posts_bloc.dart';
import 'package:doors/features/user_posts/repository/user_posts_repository.dart';
import 'package:get_it/get_it.dart';

final di = GetIt.I;
void userPostsInit() {
  // blocs
  di.registerFactoryParam<UserPostsBloc, ManagePostBloc, void>(
    (managePostBloc, _) => UserPostsBloc(
      di.get(),
      managePostBloc,
    ),
  );
  // repositories
  di.registerLazySingleton<UserPostsRepository>(
      () => UserPostsRepository(di.get(), di.get()));

  // data sources
  di.registerLazySingleton<UserPostsRemoteDataSource>(
      () => UserPostsRemoteDataSourceImpl());
  di.registerLazySingleton<UserPostsLocalDataSource>(
      () => UserPostsLocalDataSourceImpl());
}
