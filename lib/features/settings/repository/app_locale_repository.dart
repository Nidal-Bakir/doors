import 'dart:ui' show Locale;

import 'package:doors/features/settings/data/settings_local_data_source/app_locale_local_data_source.dart';

class AppLocaleRepository {
  final AppLocaleLocalDataSource _appLocaleLocalDataSource;

  AppLocaleRepository(this._appLocaleLocalDataSource);

  Locale getAppCurrentLocal() {
    return _appLocaleLocalDataSource.getAppCurrentLocal();
  }

  void setAppLocal(Locale appLocal) {
    _appLocaleLocalDataSource.setAppLocal(appLocal);
  }
}
