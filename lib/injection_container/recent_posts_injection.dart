import 'package:doors/core/enums/enums.dart';
import 'package:doors/features/manage_post/presentation/managers/manage_post_bloc/manage_post_bloc.dart';
import 'package:doors/features/recent_posts/data/recent_posts_local_data_source/recent_job_posts_local_data_source.dart';
import 'package:doors/features/recent_posts/data/recent_posts_local_data_source/recent_service_posts_local_data_source.dart';
import 'package:doors/features/recent_posts/data/recent_posts_remote_data_source/recent_job_posts_remote_data_source.dart';
import 'package:doors/features/recent_posts/data/recent_posts_remote_data_source/recent_service_posts_remote_data_source.dart';
import 'package:doors/features/recent_posts/presentation/managers/recent_job_posts_bloc/recent_job_posts_bloc.dart';
import 'package:doors/features/recent_posts/presentation/managers/recent_service_posts_bloc/recent_service_posts_bloc.dart';
import 'package:doors/features/recent_posts/repository/recent_job_posts_repository.dart';
import 'package:doors/features/recent_posts/repository/recent_service_posts_repository.dart';
import 'package:get_it/get_it.dart';

final di = GetIt.I;
void recentPostsInit() {
  // blocs
  di.registerFactoryParam<RecentServicePostsBloc, ServiceType, ManagePostBloc>(
    (posType, managePostBloc) => RecentServicePostsBloc(
      di.get(),
      posType,
      managePostBloc,
    ),
  );
  di.registerFactoryParam<RecentJobPostsBloc, ManagePostBloc, void>(
    (managePostBloc, _) => RecentJobPostsBloc(
      di.get(),
      managePostBloc,
    ),
  );

  // repositories
  di.registerLazySingleton<RecentServicePostsRepository>(
      () => RecentServicePostsRepository(di.get(), di.get()));

  di.registerLazySingleton<RecentJobPostsRepository>(
      () => RecentJobPostsRepository(di.get(), di.get()));

  // data sources
  di.registerLazySingleton<RecentServicePostsLocalDataSource>(
    () => RecentServicePostsLocalDataSourceImpl(),
    dispose: (recentServicePostsLocalDataSource) async {
      await recentServicePostsLocalDataSource.clearCache();
    },
  );

  di.registerLazySingleton<RecentServicePostsRemoteDataSource>(
      () => RecentServicePostsRemoteDataSourceImpl());

  di.registerLazySingleton<RecentJobPostsLocalDataSource>(
    () => RecentJobPostsLocalDataSourceImpl(),
    dispose: (recentJobPostsLocalDataSource) async {
      await recentJobPostsLocalDataSource.clearCache();
    },
  );

  di.registerLazySingleton<RecentJobPostsRemoteDataSource>(
      () => RecentJobPostsRemoteDataSourceImpl());
}
