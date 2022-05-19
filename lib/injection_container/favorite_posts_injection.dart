import 'package:doors/core/enums/enums.dart';
import 'package:doors/features/favorite_posts/data/favorite_posts_local_data_source/favorite_posts_local_data_source.dart';
import 'package:doors/features/favorite_posts/data/favorite_posts_remote_data_source/favorite_posts_remote_data_source.dart';
import 'package:doors/features/favorite_posts/presentation/managers/favorite_posts_bloc.dart';
import 'package:doors/features/favorite_posts/repository/favorite_posts_repository.dart';
import 'package:doors/features/manage_post/presentation/managers/manage_post_bloc/manage_post_bloc.dart';
import 'package:get_it/get_it.dart';

final di = GetIt.I;
void favoritePostsInit() {
  // blocs
  di.registerFactoryParam<FavoritePostsBloc, ManagePostBloc, PostsViewFilter>(
    (managePostBloc, viewFilter) => FavoritePostsBloc(
      di.get(),
      managePostBloc,
      viewFilter,
    ),
  );

  // repositories
  di.registerLazySingleton<FavoritePostsRepository>(
      () => FavoritePostsRepository(di.get(), di.get()));

  // data sources
  di.registerLazySingleton<FavoritePostsRemoteDataSource>(
      () => FavoritePostsRemoteDataSourceImpl());

  di.registerLazySingleton<FavoritePostsLocalDataSource>(
    () => FavoritePostsLocalDataSourceImpl(),
    dispose: (localDataSource) => localDataSource.clearCache(),
  );
}
