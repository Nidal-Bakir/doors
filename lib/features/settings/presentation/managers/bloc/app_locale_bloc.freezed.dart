// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_locale_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AppLocaleEventTearOff {
  const _$AppLocaleEventTearOff();

  AppLocaleChanged changed(Locale appLocale) {
    return AppLocaleChanged(
      appLocale,
    );
  }
}

/// @nodoc
const $AppLocaleEvent = _$AppLocaleEventTearOff();

/// @nodoc
mixin _$AppLocaleEvent {
  Locale get appLocale => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Locale appLocale) changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Locale appLocale)? changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Locale appLocale)? changed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppLocaleChanged value) changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AppLocaleChanged value)? changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLocaleChanged value)? changed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppLocaleEventCopyWith<AppLocaleEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppLocaleEventCopyWith<$Res> {
  factory $AppLocaleEventCopyWith(
          AppLocaleEvent value, $Res Function(AppLocaleEvent) then) =
      _$AppLocaleEventCopyWithImpl<$Res>;
  $Res call({Locale appLocale});
}

/// @nodoc
class _$AppLocaleEventCopyWithImpl<$Res>
    implements $AppLocaleEventCopyWith<$Res> {
  _$AppLocaleEventCopyWithImpl(this._value, this._then);

  final AppLocaleEvent _value;
  // ignore: unused_field
  final $Res Function(AppLocaleEvent) _then;

  @override
  $Res call({
    Object? appLocale = freezed,
  }) {
    return _then(_value.copyWith(
      appLocale: appLocale == freezed
          ? _value.appLocale
          : appLocale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc
abstract class $AppLocaleChangedCopyWith<$Res>
    implements $AppLocaleEventCopyWith<$Res> {
  factory $AppLocaleChangedCopyWith(
          AppLocaleChanged value, $Res Function(AppLocaleChanged) then) =
      _$AppLocaleChangedCopyWithImpl<$Res>;
  @override
  $Res call({Locale appLocale});
}

/// @nodoc
class _$AppLocaleChangedCopyWithImpl<$Res>
    extends _$AppLocaleEventCopyWithImpl<$Res>
    implements $AppLocaleChangedCopyWith<$Res> {
  _$AppLocaleChangedCopyWithImpl(
      AppLocaleChanged _value, $Res Function(AppLocaleChanged) _then)
      : super(_value, (v) => _then(v as AppLocaleChanged));

  @override
  AppLocaleChanged get _value => super._value as AppLocaleChanged;

  @override
  $Res call({
    Object? appLocale = freezed,
  }) {
    return _then(AppLocaleChanged(
      appLocale == freezed
          ? _value.appLocale
          : appLocale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc

class _$AppLocaleChanged implements AppLocaleChanged {
  const _$AppLocaleChanged(this.appLocale);

  @override
  final Locale appLocale;

  @override
  String toString() {
    return 'AppLocaleEvent.changed(appLocale: $appLocale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppLocaleChanged &&
            const DeepCollectionEquality().equals(other.appLocale, appLocale));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(appLocale));

  @JsonKey(ignore: true)
  @override
  $AppLocaleChangedCopyWith<AppLocaleChanged> get copyWith =>
      _$AppLocaleChangedCopyWithImpl<AppLocaleChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Locale appLocale) changed,
  }) {
    return changed(appLocale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Locale appLocale)? changed,
  }) {
    return changed?.call(appLocale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Locale appLocale)? changed,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(appLocale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppLocaleChanged value) changed,
  }) {
    return changed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AppLocaleChanged value)? changed,
  }) {
    return changed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLocaleChanged value)? changed,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(this);
    }
    return orElse();
  }
}

abstract class AppLocaleChanged implements AppLocaleEvent {
  const factory AppLocaleChanged(Locale appLocale) = _$AppLocaleChanged;

  @override
  Locale get appLocale;
  @override
  @JsonKey(ignore: true)
  $AppLocaleChangedCopyWith<AppLocaleChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$AppLocaleStateTearOff {
  const _$AppLocaleStateTearOff();

  AppLocaleLoadSuccess loadSuccess(Locale appCurrentLocale) {
    return AppLocaleLoadSuccess(
      appCurrentLocale,
    );
  }
}

/// @nodoc
const $AppLocaleState = _$AppLocaleStateTearOff();

/// @nodoc
mixin _$AppLocaleState {
  Locale get appCurrentLocale => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Locale appCurrentLocale) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Locale appCurrentLocale)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Locale appCurrentLocale)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppLocaleLoadSuccess value) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AppLocaleLoadSuccess value)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLocaleLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppLocaleStateCopyWith<AppLocaleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppLocaleStateCopyWith<$Res> {
  factory $AppLocaleStateCopyWith(
          AppLocaleState value, $Res Function(AppLocaleState) then) =
      _$AppLocaleStateCopyWithImpl<$Res>;
  $Res call({Locale appCurrentLocale});
}

/// @nodoc
class _$AppLocaleStateCopyWithImpl<$Res>
    implements $AppLocaleStateCopyWith<$Res> {
  _$AppLocaleStateCopyWithImpl(this._value, this._then);

  final AppLocaleState _value;
  // ignore: unused_field
  final $Res Function(AppLocaleState) _then;

  @override
  $Res call({
    Object? appCurrentLocale = freezed,
  }) {
    return _then(_value.copyWith(
      appCurrentLocale: appCurrentLocale == freezed
          ? _value.appCurrentLocale
          : appCurrentLocale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc
abstract class $AppLocaleLoadSuccessCopyWith<$Res>
    implements $AppLocaleStateCopyWith<$Res> {
  factory $AppLocaleLoadSuccessCopyWith(AppLocaleLoadSuccess value,
          $Res Function(AppLocaleLoadSuccess) then) =
      _$AppLocaleLoadSuccessCopyWithImpl<$Res>;
  @override
  $Res call({Locale appCurrentLocale});
}

/// @nodoc
class _$AppLocaleLoadSuccessCopyWithImpl<$Res>
    extends _$AppLocaleStateCopyWithImpl<$Res>
    implements $AppLocaleLoadSuccessCopyWith<$Res> {
  _$AppLocaleLoadSuccessCopyWithImpl(
      AppLocaleLoadSuccess _value, $Res Function(AppLocaleLoadSuccess) _then)
      : super(_value, (v) => _then(v as AppLocaleLoadSuccess));

  @override
  AppLocaleLoadSuccess get _value => super._value as AppLocaleLoadSuccess;

  @override
  $Res call({
    Object? appCurrentLocale = freezed,
  }) {
    return _then(AppLocaleLoadSuccess(
      appCurrentLocale == freezed
          ? _value.appCurrentLocale
          : appCurrentLocale // ignore: cast_nullable_to_non_nullable
              as Locale,
    ));
  }
}

/// @nodoc

class _$AppLocaleLoadSuccess implements AppLocaleLoadSuccess {
  const _$AppLocaleLoadSuccess(this.appCurrentLocale);

  @override
  final Locale appCurrentLocale;

  @override
  String toString() {
    return 'AppLocaleState.loadSuccess(appCurrentLocale: $appCurrentLocale)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppLocaleLoadSuccess &&
            const DeepCollectionEquality()
                .equals(other.appCurrentLocale, appCurrentLocale));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(appCurrentLocale));

  @JsonKey(ignore: true)
  @override
  $AppLocaleLoadSuccessCopyWith<AppLocaleLoadSuccess> get copyWith =>
      _$AppLocaleLoadSuccessCopyWithImpl<AppLocaleLoadSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Locale appCurrentLocale) loadSuccess,
  }) {
    return loadSuccess(appCurrentLocale);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Locale appCurrentLocale)? loadSuccess,
  }) {
    return loadSuccess?.call(appCurrentLocale);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Locale appCurrentLocale)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(appCurrentLocale);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AppLocaleLoadSuccess value) loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(AppLocaleLoadSuccess value)? loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AppLocaleLoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class AppLocaleLoadSuccess implements AppLocaleState {
  const factory AppLocaleLoadSuccess(Locale appCurrentLocale) =
      _$AppLocaleLoadSuccess;

  @override
  Locale get appCurrentLocale;
  @override
  @JsonKey(ignore: true)
  $AppLocaleLoadSuccessCopyWith<AppLocaleLoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
