import 'package:doors/features/job_application/data/job_application_local_data_source/view_post_job_applications_local_data_source.dart';
import 'package:doors/features/job_application/data/job_application_remote_data_source/view_post_job_applications_remote_data_source.dart';
import 'package:doors/features/job_application/presentation/managers/view_post_job_applications_bloc/view_post_job_applications_bloc.dart';
import 'package:doors/features/job_application/repository/view_post_job_applications_repository.dart';
import 'package:get_it/get_it.dart';

final di = GetIt.I;
void viewPostJobApplicationsInit() {
  // blocs
  di.registerFactory<ViewPostJobApplicationsBloc>(
      () => ViewPostJobApplicationsBloc(di.get()));

  // repositories
  di.registerFactory<ViewPostJobApplicationsRepository>(
      () => ViewPostJobApplicationsRepository(di.get(), di.get()));

  // data sources
  di.registerLazySingleton<ViewPostJobApplicationsRemoteDataSource>(
      () => ViewPostJobApplicationsRemoteDataSourceImpl());

  di.registerFactory<ViewPostJobApplicationsLocalDataSource>(
      () => ViewPostJobApplicationsLocalDataSourceImpl());
}
