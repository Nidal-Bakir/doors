import 'dart:ui' show Locale;
import 'package:shared_preferences/shared_preferences.dart';

abstract class AppLocaleLocalDataSource {
  Locale getAppCurrentLocal();

  void setAppLocal(Locale appLocal);
}

class AppLocaleLocalDataSourceImpl extends AppLocaleLocalDataSource {
  final SharedPreferences _sharedPreferences;

  AppLocaleLocalDataSourceImpl(this._sharedPreferences);
  @override
  Locale getAppCurrentLocal() {
    return Locale(_sharedPreferences.getString('appLocal') ?? 'en');
  }

  @override
  void setAppLocal(Locale appLocal) {
    _sharedPreferences.setString('appLocal', appLocal.languageCode);
  }
}
