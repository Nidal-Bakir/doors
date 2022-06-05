part of 'app_locale_bloc.dart';

@freezed
class AppLocaleState with _$AppLocaleState {
  const factory AppLocaleState.loadSuccess(Locale appCurrentLocale) = AppLocaleLoadSuccess;
}
