import 'package:doors/core/features/user_location/data/user_location_local_data_source/user_location_local_data_source.dart';
import 'package:doors/core/features/user_location/data/user_location_remote_data_source/user_location_remote_data_source.dart';
import 'package:doors/core/features/user_location/presentation/managers/user_location_bloc/user_location_bloc.dart';
import 'package:doors/core/features/user_location/repository/user_location_repository.dart';
import 'package:get_it/get_it.dart';

final di = GetIt.I;
void userLocationInit() {
  // blocs
  di.registerFactory<UserLocationBloc>(() => UserLocationBloc(di.get()));

  // repositories
  di.registerLazySingleton<UserLocationRepository>(
      () => UserLocationRepository(di.get(), di.get()));

  // data sources
  di.registerLazySingleton<UserLocationRemoteDataSource>(
      () => UserLocationRemoteDataSourceImpl());

  di.registerLazySingleton<UserLocationLocalDataSource>(
      () => UserLocationLocalDataSourceImpl());
}
