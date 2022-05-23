import 'package:doors/features/send_job_application/data/send_job_application_remote_data_source/send_job_application_remote_data_source.dart';
import 'package:doors/features/send_job_application/presentation/managers/send_job_application_bloc/send_job_application_bloc.dart';
import 'package:doors/features/send_job_application/repository/send_job_application_repository.dart';
import 'package:get_it/get_it.dart';

final di = GetIt.I;
void sendJobApplicationInit() {
  // blocs
  di.registerFactory<SendJobApplicationBloc>(
    () => SendJobApplicationBloc(
      di.get(),
    ),
  );

  // repositories
  di.registerLazySingleton<SendJobApplicationRepository>(
      () => SendJobApplicationRepository(di.get()));

  // data sources
  di.registerLazySingleton<SendJobApplicationRemoteDataSource>(
      () => SendJobApplicationRemoteDataSourceImpl());
}
