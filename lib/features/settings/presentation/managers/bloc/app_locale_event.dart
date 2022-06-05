part of 'app_locale_bloc.dart';

@freezed
class AppLocaleEvent with _$AppLocaleEvent {
  const factory AppLocaleEvent.changed(Locale appLocale) = AppLocaleChanged;
}