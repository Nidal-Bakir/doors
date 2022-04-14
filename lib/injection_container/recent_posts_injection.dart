import 'package:doors/core/enums/enums.dart';
import 'package:doors/features/recent_posts/data/recent_post_remote_data_source/recent_posts_remote_data_source.dart';
import 'package:doors/features/recent_posts/data/recent_posts_local_data_source/recent_posts_local_data_source.dart';
import 'package:doors/features/recent_posts/presentation/managers/recent_posts_bloc/recent_posts_bloc.dart';
import 'package:doors/features/recent_posts/repository/recent_posts_repository.dart';
import 'package:get_it/get_it.dart';

final di = GetIt.I;
void recentPostsInit() {
  // blocs
  di.registerFactoryParam<RecentPostsBloc, PostType, void>(
    (posType, _) => RecentPostsBloc(
      di.get(),
      posType,
    ),
  );

  // repositories
  di.registerLazySingleton<RecentPostsRepository>(
      () => RecentPostsRepository(di.get(), di.get()));

  // data sources
  di.registerLazySingleton<RecentPostsLocalDataSource>(
    () => RecentPostsLocalDataSourceImpl(),
    dispose: (recentPostsLocalDataSource) async {
      await recentPostsLocalDataSource.clearCache();
    },
  );
  di.registerLazySingleton<RecentPostsRemoteDataSource>(
      () => RecentPostsRemoteDataSourceImpl());
}