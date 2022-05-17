import 'package:doors/core/features/user_posts/data/user_posts_local_data_source/user_posts_local_data_source.dart';
import 'package:doors/core/features/user_posts/data/user_posts_remote_data_source/user_posts_remote_data_source.dart';
import 'package:doors/core/features/user_posts/presentation/managers/user_posts_bloc/user_posts_bloc.dart';
import 'package:doors/core/features/user_posts/repository/user_posts_repository.dart';
import 'package:get_it/get_it.dart';

final di = GetIt.I;
void userPostsInit() {
  // blocs
  di.registerFactoryParam<UserPostsBloc, String, String>(
    (String postsClassName, String relationFieldName) => UserPostsBloc(
      userPostsRepository: di.get(),
      postsClassName: postsClassName,
      relationFieldName: relationFieldName,
    ),
  );

  // repositories
  di.registerFactory<UserPostsRepository>(
      () => UserPostsRepository(di.get(), di.get()));

  // data sources
  di.registerLazySingleton<UserPostsRemoteDataSource>(
      () => UserPostsRemoteDataSourceImpl());

  di.registerFactory<UserPostsLocalDataSource>(
      () => UserPostsLocalDataSourceImpl());
}
