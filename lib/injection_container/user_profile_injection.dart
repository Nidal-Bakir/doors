import 'package:doors/features/user_profile/data/user_profile_remote_data_source/user_profile_remote_data_source.dart';
import 'package:doors/features/user_profile/presentation/managers/edit_profile_bloc/edit_profile_bloc.dart';
import 'package:doors/features/user_profile/repository/user_profile_repository.dart';
import 'package:get_it/get_it.dart';

final di = GetIt.I;
void userProfileInit() {
  // blocs
  di.registerFactory<EditProfileBloc>(() => EditProfileBloc(di.get()));

  // repositories
  di.registerLazySingleton<UserProfileRepository>(
      () => UserProfileRepository(di.get()));

  // data sources
  di.registerLazySingleton<UserProfileRemoteDataSource>(
      () => UserProfileRemoteDataSourceImpl());
}
