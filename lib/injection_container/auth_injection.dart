import 'package:doors/core/features/auth/data/auth_data_source/auth_local_data_source.dart';
import 'package:doors/core/features/auth/data/auth_data_source/auth_remote_data_source.dart';
import 'package:doors/core/features/auth/presentation/managers/auth_bloc/auth_bloc.dart';
import 'package:doors/core/features/auth/repository/auth_repository.dart';
import 'package:get_it/get_it.dart';

final di = GetIt.I;
void authInit() {
  // blocs
  di.registerFactory<AuthBloc>(() => AuthBloc(di.get(), di.get()));

  // repositories
  di.registerLazySingleton<AuthRepository>(
      () => AuthRepository(di.get(), di.get()));

  // data sources
  di.registerLazySingleton<AuthRemoteDataSource>(
      () => AuthRemoteDataSourceImp());
  di.registerLazySingleton<AuthLocalDataSource>(
      () => AuthLocalDataSourceImpl());
}
