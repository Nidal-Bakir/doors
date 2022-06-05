import 'package:bloc/bloc.dart';
import 'package:doors/features/settings/repository/app_locale_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:ui' show Locale;
part 'app_locale_event.dart';
part 'app_locale_state.dart';
part 'app_locale_bloc.freezed.dart';

class AppLocaleBloc extends Bloc<AppLocaleEvent, AppLocaleState> {
  final AppLocaleRepository _appLocaleRepository;
  AppLocaleBloc(this._appLocaleRepository)
      : super(
          AppLocaleLoadSuccess(
            _appLocaleRepository.getAppCurrentLocal(),
          ),
        ) {
    on<AppLocaleEvent>((event, emit) {
      event.map(
        changed: (event) => _onAppLocaleChanged(event, emit),
      );
    });
  }

  void _onAppLocaleChanged(
      AppLocaleChanged event, Emitter<AppLocaleState> emit) {
    _appLocaleRepository.setAppLocal(event.appLocale);
    emit(AppLocaleLoadSuccess(event.appLocale));
  }
}
