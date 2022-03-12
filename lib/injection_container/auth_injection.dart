import 'package:doors/core/auth/data/auth_local_data_source.dart';
import 'package:doors/core/auth/data/auth_remote_data_source.dart';
import 'package:doors/core/auth/presentation/managers/auth_bloc/auth_bloc.dart';
import 'package:doors/core/auth/repository/auth_repository.dart';
import 'package:get_it/get_it.dart';

final di = GetIt.I;
void authInit() {
  // blocs
  di.registerFactory<AuthBloc>(() => AuthBloc(di.get()));

  // repositories
  di.registerLazySingleton<AuthRepositoryFactory>(
      () => AuthRepositoryFactory(di.get(), di.get()));

  // data sources
  di.registerLazySingleton<AuthRemoteDataSource>(
      () => AuthRemoteDataSourceImp());
  di.registerLazySingleton<AuthLocalDataSource>(
      () => AuthLocalDataSourceImpl());
}
