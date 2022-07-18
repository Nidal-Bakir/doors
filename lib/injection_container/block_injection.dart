import 'package:doors/features/block/data/block_remote_data_source.dart';
import 'package:doors/features/block/presentation/managers/bloc/user_block_bloc.dart';
import 'package:doors/features/block/repository/block_repository.dart';
import 'package:get_it/get_it.dart';

final di = GetIt.I;

void blockInit() {
  // bloc
  di.registerFactory(() => UserBlockBloc(di.get()));

  // repository
  di.registerLazySingleton<BlockRepository>(
    () => BlockRepository(di.get()),
  );
  
  // data source
  di.registerLazySingleton<BlockRemoteDataSource>(
    () => BlockRemoteDataSourceImpl(),
  );
}
