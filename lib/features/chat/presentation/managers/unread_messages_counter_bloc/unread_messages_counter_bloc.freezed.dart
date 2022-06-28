// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'unread_messages_counter_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$UnreadMessagesCounterEventTearOff {
  const _$UnreadMessagesCounterEventTearOff();

  _UnreadMessagesCounterChanged changed(int unreadMessageCount) {
    return _UnreadMessagesCounterChanged(
      unreadMessageCount,
    );
  }
}

/// @nodoc
const $UnreadMessagesCounterEvent = _$UnreadMessagesCounterEventTearOff();

/// @nodoc
mixin _$UnreadMessagesCounterEvent {
  int get unreadMessageCount => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int unreadMessageCount) changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int unreadMessageCount)? changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int unreadMessageCount)? changed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnreadMessagesCounterChanged value) changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UnreadMessagesCounterChanged value)? changed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnreadMessagesCounterChanged value)? changed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UnreadMessagesCounterEventCopyWith<UnreadMessagesCounterEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnreadMessagesCounterEventCopyWith<$Res> {
  factory $UnreadMessagesCounterEventCopyWith(UnreadMessagesCounterEvent value,
          $Res Function(UnreadMessagesCounterEvent) then) =
      _$UnreadMessagesCounterEventCopyWithImpl<$Res>;
  $Res call({int unreadMessageCount});
}

/// @nodoc
class _$UnreadMessagesCounterEventCopyWithImpl<$Res>
    implements $UnreadMessagesCounterEventCopyWith<$Res> {
  _$UnreadMessagesCounterEventCopyWithImpl(this._value, this._then);

  final UnreadMessagesCounterEvent _value;
  // ignore: unused_field
  final $Res Function(UnreadMessagesCounterEvent) _then;

  @override
  $Res call({
    Object? unreadMessageCount = freezed,
  }) {
    return _then(_value.copyWith(
      unreadMessageCount: unreadMessageCount == freezed
          ? _value.unreadMessageCount
          : unreadMessageCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$UnreadMessagesCounterChangedCopyWith<$Res>
    implements $UnreadMessagesCounterEventCopyWith<$Res> {
  factory _$UnreadMessagesCounterChangedCopyWith(
          _UnreadMessagesCounterChanged value,
          $Res Function(_UnreadMessagesCounterChanged) then) =
      __$UnreadMessagesCounterChangedCopyWithImpl<$Res>;
  @override
  $Res call({int unreadMessageCount});
}

/// @nodoc
class __$UnreadMessagesCounterChangedCopyWithImpl<$Res>
    extends _$UnreadMessagesCounterEventCopyWithImpl<$Res>
    implements _$UnreadMessagesCounterChangedCopyWith<$Res> {
  __$UnreadMessagesCounterChangedCopyWithImpl(
      _UnreadMessagesCounterChanged _value,
      $Res Function(_UnreadMessagesCounterChanged) _then)
      : super(_value, (v) => _then(v as _UnreadMessagesCounterChanged));

  @override
  _UnreadMessagesCounterChanged get _value =>
      super._value as _UnreadMessagesCounterChanged;

  @override
  $Res call({
    Object? unreadMessageCount = freezed,
  }) {
    return _then(_UnreadMessagesCounterChanged(
      unreadMessageCount == freezed
          ? _value.unreadMessageCount
          : unreadMessageCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_UnreadMessagesCounterChanged implements _UnreadMessagesCounterChanged {
  const _$_UnreadMessagesCounterChanged(this.unreadMessageCount);

  @override
  final int unreadMessageCount;

  @override
  String toString() {
    return 'UnreadMessagesCounterEvent.changed(unreadMessageCount: $unreadMessageCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UnreadMessagesCounterChanged &&
            const DeepCollectionEquality()
                .equals(other.unreadMessageCount, unreadMessageCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(unreadMessageCount));

  @JsonKey(ignore: true)
  @override
  _$UnreadMessagesCounterChangedCopyWith<_UnreadMessagesCounterChanged>
      get copyWith => __$UnreadMessagesCounterChangedCopyWithImpl<
          _UnreadMessagesCounterChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int unreadMessageCount) changed,
  }) {
    return changed(unreadMessageCount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int unreadMessageCount)? changed,
  }) {
    return changed?.call(unreadMessageCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int unreadMessageCount)? changed,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(unreadMessageCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UnreadMessagesCounterChanged value) changed,
  }) {
    return changed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UnreadMessagesCounterChanged value)? changed,
  }) {
    return changed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UnreadMessagesCounterChanged value)? changed,
    required TResult orElse(),
  }) {
    if (changed != null) {
      return changed(this);
    }
    return orElse();
  }
}

abstract class _UnreadMessagesCounterChanged
    implements UnreadMessagesCounterEvent {
  const factory _UnreadMessagesCounterChanged(int unreadMessageCount) =
      _$_UnreadMessagesCounterChanged;

  @override
  int get unreadMessageCount;
  @override
  @JsonKey(ignore: true)
  _$UnreadMessagesCounterChangedCopyWith<_UnreadMessagesCounterChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$UnreadMessagesCounterStateTearOff {
  const _$UnreadMessagesCounterStateTearOff();

  UnreadMessagesCounterChangeSuccess changeSuccess(int unreadMessageCount) {
    return UnreadMessagesCounterChangeSuccess(
      unreadMessageCount,
    );
  }
}

/// @nodoc
const $UnreadMessagesCounterState = _$UnreadMessagesCounterStateTearOff();

/// @nodoc
mixin _$UnreadMessagesCounterState {
  int get unreadMessageCount => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int unreadMessageCount) changeSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int unreadMessageCount)? changeSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int unreadMessageCount)? changeSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnreadMessagesCounterChangeSuccess value)
        changeSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UnreadMessagesCounterChangeSuccess value)? changeSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnreadMessagesCounterChangeSuccess value)? changeSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UnreadMessagesCounterStateCopyWith<UnreadMessagesCounterState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnreadMessagesCounterStateCopyWith<$Res> {
  factory $UnreadMessagesCounterStateCopyWith(UnreadMessagesCounterState value,
          $Res Function(UnreadMessagesCounterState) then) =
      _$UnreadMessagesCounterStateCopyWithImpl<$Res>;
  $Res call({int unreadMessageCount});
}

/// @nodoc
class _$UnreadMessagesCounterStateCopyWithImpl<$Res>
    implements $UnreadMessagesCounterStateCopyWith<$Res> {
  _$UnreadMessagesCounterStateCopyWithImpl(this._value, this._then);

  final UnreadMessagesCounterState _value;
  // ignore: unused_field
  final $Res Function(UnreadMessagesCounterState) _then;

  @override
  $Res call({
    Object? unreadMessageCount = freezed,
  }) {
    return _then(_value.copyWith(
      unreadMessageCount: unreadMessageCount == freezed
          ? _value.unreadMessageCount
          : unreadMessageCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class $UnreadMessagesCounterChangeSuccessCopyWith<$Res>
    implements $UnreadMessagesCounterStateCopyWith<$Res> {
  factory $UnreadMessagesCounterChangeSuccessCopyWith(
          UnreadMessagesCounterChangeSuccess value,
          $Res Function(UnreadMessagesCounterChangeSuccess) then) =
      _$UnreadMessagesCounterChangeSuccessCopyWithImpl<$Res>;
  @override
  $Res call({int unreadMessageCount});
}

/// @nodoc
class _$UnreadMessagesCounterChangeSuccessCopyWithImpl<$Res>
    extends _$UnreadMessagesCounterStateCopyWithImpl<$Res>
    implements $UnreadMessagesCounterChangeSuccessCopyWith<$Res> {
  _$UnreadMessagesCounterChangeSuccessCopyWithImpl(
      UnreadMessagesCounterChangeSuccess _value,
      $Res Function(UnreadMessagesCounterChangeSuccess) _then)
      : super(_value, (v) => _then(v as UnreadMessagesCounterChangeSuccess));

  @override
  UnreadMessagesCounterChangeSuccess get _value =>
      super._value as UnreadMessagesCounterChangeSuccess;

  @override
  $Res call({
    Object? unreadMessageCount = freezed,
  }) {
    return _then(UnreadMessagesCounterChangeSuccess(
      unreadMessageCount == freezed
          ? _value.unreadMessageCount
          : unreadMessageCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UnreadMessagesCounterChangeSuccess
    implements UnreadMessagesCounterChangeSuccess {
  const _$UnreadMessagesCounterChangeSuccess(this.unreadMessageCount);

  @override
  final int unreadMessageCount;

  @override
  String toString() {
    return 'UnreadMessagesCounterState.changeSuccess(unreadMessageCount: $unreadMessageCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UnreadMessagesCounterChangeSuccess &&
            const DeepCollectionEquality()
                .equals(other.unreadMessageCount, unreadMessageCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(unreadMessageCount));

  @JsonKey(ignore: true)
  @override
  $UnreadMessagesCounterChangeSuccessCopyWith<
          UnreadMessagesCounterChangeSuccess>
      get copyWith => _$UnreadMessagesCounterChangeSuccessCopyWithImpl<
          UnreadMessagesCounterChangeSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int unreadMessageCount) changeSuccess,
  }) {
    return changeSuccess(unreadMessageCount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int unreadMessageCount)? changeSuccess,
  }) {
    return changeSuccess?.call(unreadMessageCount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int unreadMessageCount)? changeSuccess,
    required TResult orElse(),
  }) {
    if (changeSuccess != null) {
      return changeSuccess(unreadMessageCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnreadMessagesCounterChangeSuccess value)
        changeSuccess,
  }) {
    return changeSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UnreadMessagesCounterChangeSuccess value)? changeSuccess,
  }) {
    return changeSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnreadMessagesCounterChangeSuccess value)? changeSuccess,
    required TResult orElse(),
  }) {
    if (changeSuccess != null) {
      return changeSuccess(this);
    }
    return orElse();
  }
}

abstract class UnreadMessagesCounterChangeSuccess
    implements UnreadMessagesCounterState {
  const factory UnreadMessagesCounterChangeSuccess(int unreadMessageCount) =
      _$UnreadMessagesCounterChangeSuccess;

  @override
  int get unreadMessageCount;
  @override
  @JsonKey(ignore: true)
  $UnreadMessagesCounterChangeSuccessCopyWith<
          UnreadMessagesCounterChangeSuccess>
      get copyWith => throw _privateConstructorUsedError;
}
