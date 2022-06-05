import 'package:doors/features/settings/data/settings_local_data_source/app_locale_local_data_source.dart';
import 'package:doors/features/settings/presentation/managers/bloc/app_locale_bloc.dart';
import 'package:doors/features/settings/repository/app_locale_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final di = GetIt.I;
Future<void> settingsInit() async {
  // blocs
  di.registerFactory<AppLocaleBloc>(() => AppLocaleBloc(di.get()));

  // repositories
  di.registerLazySingleton<AppLocaleRepository>(
      () => AppLocaleRepository(di.get()));

  // data sources
  di.registerLazySingleton<AppLocaleLocalDataSource>(
      () => AppLocaleLocalDataSourceImpl(di.get()));

  final pref = await SharedPreferences.getInstance();
  di.registerLazySingleton<SharedPreferences>(() => pref);
}
