import 'package:doors/core/features/post/data/favorite_post_remote_data_source.dart';
import 'package:doors/core/features/post/data/post_report_remote_data_source.dart';
import 'package:doors/core/features/post/data/user_rate_remote_data_source.dart';
import 'package:doors/core/features/post/presentation/managers/favorite_post_bloc/favorite_post_bloc.dart';
import 'package:doors/core/features/post/repository/favorite_repository.dart';
import 'package:doors/core/features/post/repository/post_report_repository.dart';
import 'package:doors/core/features/post/repository/user_rate_repository.dart';
import 'package:get_it/get_it.dart';

final di = GetIt.I;
void postInit() {
  // blocs
  di.registerFactory<FavoritePostBloc>(() => FavoritePostBloc(di.get()));

  // repositories
  di.registerLazySingleton<FavoriteRepository>(
      () => FavoriteRepository(di.get()));

  di.registerLazySingleton<PostReportRepository>(
      () => PostReportRepository(di.get()));
      
  di.registerLazySingleton<UserRateRepository>(
      () => UserRateRepository(di.get()));

  // data sources
  di.registerLazySingleton<FavoritePostRemoteDataSource>(
      () => FavoritePostRemoteDataSourceImpl());

  di.registerLazySingleton<PostReportRemoteDataSource>(
      () => PostReportRemoteDataSourceImpl());

  di.registerLazySingleton<UserRateRemoteDataSource>(
      () => UserRateRemoteDataSourceImpl());
}
