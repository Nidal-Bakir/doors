// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChatEventTearOff {
  const _$ChatEventTearOff();

  ChatMessagesLoaded messagesLoaded() {
    return const ChatMessagesLoaded();
  }

  _ChatNewMessageAdded newMessageAdded(LocalChatMessage newMessage) {
    return _ChatNewMessageAdded(
      newMessage,
    );
  }
}

/// @nodoc
const $ChatEvent = _$ChatEventTearOff();

/// @nodoc
mixin _$ChatEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() messagesLoaded,
    required TResult Function(LocalChatMessage newMessage) newMessageAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? messagesLoaded,
    TResult Function(LocalChatMessage newMessage)? newMessageAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? messagesLoaded,
    TResult Function(LocalChatMessage newMessage)? newMessageAdded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatMessagesLoaded value) messagesLoaded,
    required TResult Function(_ChatNewMessageAdded value) newMessageAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChatMessagesLoaded value)? messagesLoaded,
    TResult Function(_ChatNewMessageAdded value)? newMessageAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatMessagesLoaded value)? messagesLoaded,
    TResult Function(_ChatNewMessageAdded value)? newMessageAdded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatEventCopyWith<$Res> {
  factory $ChatEventCopyWith(ChatEvent value, $Res Function(ChatEvent) then) =
      _$ChatEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatEventCopyWithImpl<$Res> implements $ChatEventCopyWith<$Res> {
  _$ChatEventCopyWithImpl(this._value, this._then);

  final ChatEvent _value;
  // ignore: unused_field
  final $Res Function(ChatEvent) _then;
}

/// @nodoc
abstract class $ChatMessagesLoadedCopyWith<$Res> {
  factory $ChatMessagesLoadedCopyWith(
          ChatMessagesLoaded value, $Res Function(ChatMessagesLoaded) then) =
      _$ChatMessagesLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatMessagesLoadedCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res>
    implements $ChatMessagesLoadedCopyWith<$Res> {
  _$ChatMessagesLoadedCopyWithImpl(
      ChatMessagesLoaded _value, $Res Function(ChatMessagesLoaded) _then)
      : super(_value, (v) => _then(v as ChatMessagesLoaded));

  @override
  ChatMessagesLoaded get _value => super._value as ChatMessagesLoaded;
}

/// @nodoc

class _$ChatMessagesLoaded implements ChatMessagesLoaded {
  const _$ChatMessagesLoaded();

  @override
  String toString() {
    return 'ChatEvent.messagesLoaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ChatMessagesLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() messagesLoaded,
    required TResult Function(LocalChatMessage newMessage) newMessageAdded,
  }) {
    return messagesLoaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? messagesLoaded,
    TResult Function(LocalChatMessage newMessage)? newMessageAdded,
  }) {
    return messagesLoaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? messagesLoaded,
    TResult Function(LocalChatMessage newMessage)? newMessageAdded,
    required TResult orElse(),
  }) {
    if (messagesLoaded != null) {
      return messagesLoaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatMessagesLoaded value) messagesLoaded,
    required TResult Function(_ChatNewMessageAdded value) newMessageAdded,
  }) {
    return messagesLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChatMessagesLoaded value)? messagesLoaded,
    TResult Function(_ChatNewMessageAdded value)? newMessageAdded,
  }) {
    return messagesLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatMessagesLoaded value)? messagesLoaded,
    TResult Function(_ChatNewMessageAdded value)? newMessageAdded,
    required TResult orElse(),
  }) {
    if (messagesLoaded != null) {
      return messagesLoaded(this);
    }
    return orElse();
  }
}

abstract class ChatMessagesLoaded implements ChatEvent {
  const factory ChatMessagesLoaded() = _$ChatMessagesLoaded;
}

/// @nodoc
abstract class _$ChatNewMessageAddedCopyWith<$Res> {
  factory _$ChatNewMessageAddedCopyWith(_ChatNewMessageAdded value,
          $Res Function(_ChatNewMessageAdded) then) =
      __$ChatNewMessageAddedCopyWithImpl<$Res>;
  $Res call({LocalChatMessage newMessage});
}

/// @nodoc
class __$ChatNewMessageAddedCopyWithImpl<$Res>
    extends _$ChatEventCopyWithImpl<$Res>
    implements _$ChatNewMessageAddedCopyWith<$Res> {
  __$ChatNewMessageAddedCopyWithImpl(
      _ChatNewMessageAdded _value, $Res Function(_ChatNewMessageAdded) _then)
      : super(_value, (v) => _then(v as _ChatNewMessageAdded));

  @override
  _ChatNewMessageAdded get _value => super._value as _ChatNewMessageAdded;

  @override
  $Res call({
    Object? newMessage = freezed,
  }) {
    return _then(_ChatNewMessageAdded(
      newMessage == freezed
          ? _value.newMessage
          : newMessage // ignore: cast_nullable_to_non_nullable
              as LocalChatMessage,
    ));
  }
}

/// @nodoc

class _$_ChatNewMessageAdded implements _ChatNewMessageAdded {
  const _$_ChatNewMessageAdded(this.newMessage);

  @override
  final LocalChatMessage newMessage;

  @override
  String toString() {
    return 'ChatEvent.newMessageAdded(newMessage: $newMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChatNewMessageAdded &&
            const DeepCollectionEquality()
                .equals(other.newMessage, newMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(newMessage));

  @JsonKey(ignore: true)
  @override
  _$ChatNewMessageAddedCopyWith<_ChatNewMessageAdded> get copyWith =>
      __$ChatNewMessageAddedCopyWithImpl<_ChatNewMessageAdded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() messagesLoaded,
    required TResult Function(LocalChatMessage newMessage) newMessageAdded,
  }) {
    return newMessageAdded(newMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? messagesLoaded,
    TResult Function(LocalChatMessage newMessage)? newMessageAdded,
  }) {
    return newMessageAdded?.call(newMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? messagesLoaded,
    TResult Function(LocalChatMessage newMessage)? newMessageAdded,
    required TResult orElse(),
  }) {
    if (newMessageAdded != null) {
      return newMessageAdded(newMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatMessagesLoaded value) messagesLoaded,
    required TResult Function(_ChatNewMessageAdded value) newMessageAdded,
  }) {
    return newMessageAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChatMessagesLoaded value)? messagesLoaded,
    TResult Function(_ChatNewMessageAdded value)? newMessageAdded,
  }) {
    return newMessageAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatMessagesLoaded value)? messagesLoaded,
    TResult Function(_ChatNewMessageAdded value)? newMessageAdded,
    required TResult orElse(),
  }) {
    if (newMessageAdded != null) {
      return newMessageAdded(this);
    }
    return orElse();
  }
}

abstract class _ChatNewMessageAdded implements ChatEvent {
  const factory _ChatNewMessageAdded(LocalChatMessage newMessage) =
      _$_ChatNewMessageAdded;

  LocalChatMessage get newMessage;
  @JsonKey(ignore: true)
  _$ChatNewMessageAddedCopyWith<_ChatNewMessageAdded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$ChatStateTearOff {
  const _$ChatStateTearOff();

  ChatInProgress inProgress() {
    return const ChatInProgress();
  }

  ChatMoreMessagesInProgress moreMessagesInProgress() {
    return const ChatMoreMessagesInProgress();
  }

  ChatNewMessageAddedSuccessfully newMessageAddedSuccessfully(
      LocalChatMessage newMessage) {
    return ChatNewMessageAddedSuccessfully(
      newMessage,
    );
  }

  ChatMessagesLoadSuccess messagesLoadSuccess(
      UnmodifiableListView<LocalChatMessage> chatMessages, bool isCanLoadMore) {
    return ChatMessagesLoadSuccess(
      chatMessages,
      isCanLoadMore,
    );
  }
}

/// @nodoc
const $ChatState = _$ChatStateTearOff();

/// @nodoc
mixin _$ChatState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function() moreMessagesInProgress,
    required TResult Function(LocalChatMessage newMessage)
        newMessageAddedSuccessfully,
    required TResult Function(
            UnmodifiableListView<LocalChatMessage> chatMessages,
            bool isCanLoadMore)
        messagesLoadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function()? moreMessagesInProgress,
    TResult Function(LocalChatMessage newMessage)? newMessageAddedSuccessfully,
    TResult Function(UnmodifiableListView<LocalChatMessage> chatMessages,
            bool isCanLoadMore)?
        messagesLoadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function()? moreMessagesInProgress,
    TResult Function(LocalChatMessage newMessage)? newMessageAddedSuccessfully,
    TResult Function(UnmodifiableListView<LocalChatMessage> chatMessages,
            bool isCanLoadMore)?
        messagesLoadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatInProgress value) inProgress,
    required TResult Function(ChatMoreMessagesInProgress value)
        moreMessagesInProgress,
    required TResult Function(ChatNewMessageAddedSuccessfully value)
        newMessageAddedSuccessfully,
    required TResult Function(ChatMessagesLoadSuccess value)
        messagesLoadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChatInProgress value)? inProgress,
    TResult Function(ChatMoreMessagesInProgress value)? moreMessagesInProgress,
    TResult Function(ChatNewMessageAddedSuccessfully value)?
        newMessageAddedSuccessfully,
    TResult Function(ChatMessagesLoadSuccess value)? messagesLoadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatInProgress value)? inProgress,
    TResult Function(ChatMoreMessagesInProgress value)? moreMessagesInProgress,
    TResult Function(ChatNewMessageAddedSuccessfully value)?
        newMessageAddedSuccessfully,
    TResult Function(ChatMessagesLoadSuccess value)? messagesLoadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res> implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  final ChatState _value;
  // ignore: unused_field
  final $Res Function(ChatState) _then;
}

/// @nodoc
abstract class $ChatInProgressCopyWith<$Res> {
  factory $ChatInProgressCopyWith(
          ChatInProgress value, $Res Function(ChatInProgress) then) =
      _$ChatInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatInProgressCopyWithImpl<$Res> extends _$ChatStateCopyWithImpl<$Res>
    implements $ChatInProgressCopyWith<$Res> {
  _$ChatInProgressCopyWithImpl(
      ChatInProgress _value, $Res Function(ChatInProgress) _then)
      : super(_value, (v) => _then(v as ChatInProgress));

  @override
  ChatInProgress get _value => super._value as ChatInProgress;
}

/// @nodoc

class _$ChatInProgress implements ChatInProgress {
  const _$ChatInProgress();

  @override
  String toString() {
    return 'ChatState.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ChatInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function() moreMessagesInProgress,
    required TResult Function(LocalChatMessage newMessage)
        newMessageAddedSuccessfully,
    required TResult Function(
            UnmodifiableListView<LocalChatMessage> chatMessages,
            bool isCanLoadMore)
        messagesLoadSuccess,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function()? moreMessagesInProgress,
    TResult Function(LocalChatMessage newMessage)? newMessageAddedSuccessfully,
    TResult Function(UnmodifiableListView<LocalChatMessage> chatMessages,
            bool isCanLoadMore)?
        messagesLoadSuccess,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function()? moreMessagesInProgress,
    TResult Function(LocalChatMessage newMessage)? newMessageAddedSuccessfully,
    TResult Function(UnmodifiableListView<LocalChatMessage> chatMessages,
            bool isCanLoadMore)?
        messagesLoadSuccess,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatInProgress value) inProgress,
    required TResult Function(ChatMoreMessagesInProgress value)
        moreMessagesInProgress,
    required TResult Function(ChatNewMessageAddedSuccessfully value)
        newMessageAddedSuccessfully,
    required TResult Function(ChatMessagesLoadSuccess value)
        messagesLoadSuccess,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChatInProgress value)? inProgress,
    TResult Function(ChatMoreMessagesInProgress value)? moreMessagesInProgress,
    TResult Function(ChatNewMessageAddedSuccessfully value)?
        newMessageAddedSuccessfully,
    TResult Function(ChatMessagesLoadSuccess value)? messagesLoadSuccess,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatInProgress value)? inProgress,
    TResult Function(ChatMoreMessagesInProgress value)? moreMessagesInProgress,
    TResult Function(ChatNewMessageAddedSuccessfully value)?
        newMessageAddedSuccessfully,
    TResult Function(ChatMessagesLoadSuccess value)? messagesLoadSuccess,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class ChatInProgress implements ChatState {
  const factory ChatInProgress() = _$ChatInProgress;
}

/// @nodoc
abstract class $ChatMoreMessagesInProgressCopyWith<$Res> {
  factory $ChatMoreMessagesInProgressCopyWith(ChatMoreMessagesInProgress value,
          $Res Function(ChatMoreMessagesInProgress) then) =
      _$ChatMoreMessagesInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatMoreMessagesInProgressCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res>
    implements $ChatMoreMessagesInProgressCopyWith<$Res> {
  _$ChatMoreMessagesInProgressCopyWithImpl(ChatMoreMessagesInProgress _value,
      $Res Function(ChatMoreMessagesInProgress) _then)
      : super(_value, (v) => _then(v as ChatMoreMessagesInProgress));

  @override
  ChatMoreMessagesInProgress get _value =>
      super._value as ChatMoreMessagesInProgress;
}

/// @nodoc

class _$ChatMoreMessagesInProgress implements ChatMoreMessagesInProgress {
  const _$ChatMoreMessagesInProgress();

  @override
  String toString() {
    return 'ChatState.moreMessagesInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChatMoreMessagesInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function() moreMessagesInProgress,
    required TResult Function(LocalChatMessage newMessage)
        newMessageAddedSuccessfully,
    required TResult Function(
            UnmodifiableListView<LocalChatMessage> chatMessages,
            bool isCanLoadMore)
        messagesLoadSuccess,
  }) {
    return moreMessagesInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function()? moreMessagesInProgress,
    TResult Function(LocalChatMessage newMessage)? newMessageAddedSuccessfully,
    TResult Function(UnmodifiableListView<LocalChatMessage> chatMessages,
            bool isCanLoadMore)?
        messagesLoadSuccess,
  }) {
    return moreMessagesInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function()? moreMessagesInProgress,
    TResult Function(LocalChatMessage newMessage)? newMessageAddedSuccessfully,
    TResult Function(UnmodifiableListView<LocalChatMessage> chatMessages,
            bool isCanLoadMore)?
        messagesLoadSuccess,
    required TResult orElse(),
  }) {
    if (moreMessagesInProgress != null) {
      return moreMessagesInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatInProgress value) inProgress,
    required TResult Function(ChatMoreMessagesInProgress value)
        moreMessagesInProgress,
    required TResult Function(ChatNewMessageAddedSuccessfully value)
        newMessageAddedSuccessfully,
    required TResult Function(ChatMessagesLoadSuccess value)
        messagesLoadSuccess,
  }) {
    return moreMessagesInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChatInProgress value)? inProgress,
    TResult Function(ChatMoreMessagesInProgress value)? moreMessagesInProgress,
    TResult Function(ChatNewMessageAddedSuccessfully value)?
        newMessageAddedSuccessfully,
    TResult Function(ChatMessagesLoadSuccess value)? messagesLoadSuccess,
  }) {
    return moreMessagesInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatInProgress value)? inProgress,
    TResult Function(ChatMoreMessagesInProgress value)? moreMessagesInProgress,
    TResult Function(ChatNewMessageAddedSuccessfully value)?
        newMessageAddedSuccessfully,
    TResult Function(ChatMessagesLoadSuccess value)? messagesLoadSuccess,
    required TResult orElse(),
  }) {
    if (moreMessagesInProgress != null) {
      return moreMessagesInProgress(this);
    }
    return orElse();
  }
}

abstract class ChatMoreMessagesInProgress implements ChatState {
  const factory ChatMoreMessagesInProgress() = _$ChatMoreMessagesInProgress;
}

/// @nodoc
abstract class $ChatNewMessageAddedSuccessfullyCopyWith<$Res> {
  factory $ChatNewMessageAddedSuccessfullyCopyWith(
          ChatNewMessageAddedSuccessfully value,
          $Res Function(ChatNewMessageAddedSuccessfully) then) =
      _$ChatNewMessageAddedSuccessfullyCopyWithImpl<$Res>;
  $Res call({LocalChatMessage newMessage});
}

/// @nodoc
class _$ChatNewMessageAddedSuccessfullyCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res>
    implements $ChatNewMessageAddedSuccessfullyCopyWith<$Res> {
  _$ChatNewMessageAddedSuccessfullyCopyWithImpl(
      ChatNewMessageAddedSuccessfully _value,
      $Res Function(ChatNewMessageAddedSuccessfully) _then)
      : super(_value, (v) => _then(v as ChatNewMessageAddedSuccessfully));

  @override
  ChatNewMessageAddedSuccessfully get _value =>
      super._value as ChatNewMessageAddedSuccessfully;

  @override
  $Res call({
    Object? newMessage = freezed,
  }) {
    return _then(ChatNewMessageAddedSuccessfully(
      newMessage == freezed
          ? _value.newMessage
          : newMessage // ignore: cast_nullable_to_non_nullable
              as LocalChatMessage,
    ));
  }
}

/// @nodoc

class _$ChatNewMessageAddedSuccessfully
    implements ChatNewMessageAddedSuccessfully {
  const _$ChatNewMessageAddedSuccessfully(this.newMessage);

  @override
  final LocalChatMessage newMessage;

  @override
  String toString() {
    return 'ChatState.newMessageAddedSuccessfully(newMessage: $newMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChatNewMessageAddedSuccessfully &&
            const DeepCollectionEquality()
                .equals(other.newMessage, newMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(newMessage));

  @JsonKey(ignore: true)
  @override
  $ChatNewMessageAddedSuccessfullyCopyWith<ChatNewMessageAddedSuccessfully>
      get copyWith => _$ChatNewMessageAddedSuccessfullyCopyWithImpl<
          ChatNewMessageAddedSuccessfully>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function() moreMessagesInProgress,
    required TResult Function(LocalChatMessage newMessage)
        newMessageAddedSuccessfully,
    required TResult Function(
            UnmodifiableListView<LocalChatMessage> chatMessages,
            bool isCanLoadMore)
        messagesLoadSuccess,
  }) {
    return newMessageAddedSuccessfully(newMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function()? moreMessagesInProgress,
    TResult Function(LocalChatMessage newMessage)? newMessageAddedSuccessfully,
    TResult Function(UnmodifiableListView<LocalChatMessage> chatMessages,
            bool isCanLoadMore)?
        messagesLoadSuccess,
  }) {
    return newMessageAddedSuccessfully?.call(newMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function()? moreMessagesInProgress,
    TResult Function(LocalChatMessage newMessage)? newMessageAddedSuccessfully,
    TResult Function(UnmodifiableListView<LocalChatMessage> chatMessages,
            bool isCanLoadMore)?
        messagesLoadSuccess,
    required TResult orElse(),
  }) {
    if (newMessageAddedSuccessfully != null) {
      return newMessageAddedSuccessfully(newMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatInProgress value) inProgress,
    required TResult Function(ChatMoreMessagesInProgress value)
        moreMessagesInProgress,
    required TResult Function(ChatNewMessageAddedSuccessfully value)
        newMessageAddedSuccessfully,
    required TResult Function(ChatMessagesLoadSuccess value)
        messagesLoadSuccess,
  }) {
    return newMessageAddedSuccessfully(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChatInProgress value)? inProgress,
    TResult Function(ChatMoreMessagesInProgress value)? moreMessagesInProgress,
    TResult Function(ChatNewMessageAddedSuccessfully value)?
        newMessageAddedSuccessfully,
    TResult Function(ChatMessagesLoadSuccess value)? messagesLoadSuccess,
  }) {
    return newMessageAddedSuccessfully?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatInProgress value)? inProgress,
    TResult Function(ChatMoreMessagesInProgress value)? moreMessagesInProgress,
    TResult Function(ChatNewMessageAddedSuccessfully value)?
        newMessageAddedSuccessfully,
    TResult Function(ChatMessagesLoadSuccess value)? messagesLoadSuccess,
    required TResult orElse(),
  }) {
    if (newMessageAddedSuccessfully != null) {
      return newMessageAddedSuccessfully(this);
    }
    return orElse();
  }
}

abstract class ChatNewMessageAddedSuccessfully implements ChatState {
  const factory ChatNewMessageAddedSuccessfully(LocalChatMessage newMessage) =
      _$ChatNewMessageAddedSuccessfully;

  LocalChatMessage get newMessage;
  @JsonKey(ignore: true)
  $ChatNewMessageAddedSuccessfullyCopyWith<ChatNewMessageAddedSuccessfully>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMessagesLoadSuccessCopyWith<$Res> {
  factory $ChatMessagesLoadSuccessCopyWith(ChatMessagesLoadSuccess value,
          $Res Function(ChatMessagesLoadSuccess) then) =
      _$ChatMessagesLoadSuccessCopyWithImpl<$Res>;
  $Res call(
      {UnmodifiableListView<LocalChatMessage> chatMessages,
      bool isCanLoadMore});
}

/// @nodoc
class _$ChatMessagesLoadSuccessCopyWithImpl<$Res>
    extends _$ChatStateCopyWithImpl<$Res>
    implements $ChatMessagesLoadSuccessCopyWith<$Res> {
  _$ChatMessagesLoadSuccessCopyWithImpl(ChatMessagesLoadSuccess _value,
      $Res Function(ChatMessagesLoadSuccess) _then)
      : super(_value, (v) => _then(v as ChatMessagesLoadSuccess));

  @override
  ChatMessagesLoadSuccess get _value => super._value as ChatMessagesLoadSuccess;

  @override
  $Res call({
    Object? chatMessages = freezed,
    Object? isCanLoadMore = freezed,
  }) {
    return _then(ChatMessagesLoadSuccess(
      chatMessages == freezed
          ? _value.chatMessages
          : chatMessages // ignore: cast_nullable_to_non_nullable
              as UnmodifiableListView<LocalChatMessage>,
      isCanLoadMore == freezed
          ? _value.isCanLoadMore
          : isCanLoadMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ChatMessagesLoadSuccess implements ChatMessagesLoadSuccess {
  const _$ChatMessagesLoadSuccess(this.chatMessages, this.isCanLoadMore);

  @override
  final UnmodifiableListView<LocalChatMessage> chatMessages;
  @override
  final bool isCanLoadMore;

  @override
  String toString() {
    return 'ChatState.messagesLoadSuccess(chatMessages: $chatMessages, isCanLoadMore: $isCanLoadMore)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChatMessagesLoadSuccess &&
            const DeepCollectionEquality()
                .equals(other.chatMessages, chatMessages) &&
            const DeepCollectionEquality()
                .equals(other.isCanLoadMore, isCanLoadMore));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(chatMessages),
      const DeepCollectionEquality().hash(isCanLoadMore));

  @JsonKey(ignore: true)
  @override
  $ChatMessagesLoadSuccessCopyWith<ChatMessagesLoadSuccess> get copyWith =>
      _$ChatMessagesLoadSuccessCopyWithImpl<ChatMessagesLoadSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function() moreMessagesInProgress,
    required TResult Function(LocalChatMessage newMessage)
        newMessageAddedSuccessfully,
    required TResult Function(
            UnmodifiableListView<LocalChatMessage> chatMessages,
            bool isCanLoadMore)
        messagesLoadSuccess,
  }) {
    return messagesLoadSuccess(chatMessages, isCanLoadMore);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function()? moreMessagesInProgress,
    TResult Function(LocalChatMessage newMessage)? newMessageAddedSuccessfully,
    TResult Function(UnmodifiableListView<LocalChatMessage> chatMessages,
            bool isCanLoadMore)?
        messagesLoadSuccess,
  }) {
    return messagesLoadSuccess?.call(chatMessages, isCanLoadMore);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function()? moreMessagesInProgress,
    TResult Function(LocalChatMessage newMessage)? newMessageAddedSuccessfully,
    TResult Function(UnmodifiableListView<LocalChatMessage> chatMessages,
            bool isCanLoadMore)?
        messagesLoadSuccess,
    required TResult orElse(),
  }) {
    if (messagesLoadSuccess != null) {
      return messagesLoadSuccess(chatMessages, isCanLoadMore);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatInProgress value) inProgress,
    required TResult Function(ChatMoreMessagesInProgress value)
        moreMessagesInProgress,
    required TResult Function(ChatNewMessageAddedSuccessfully value)
        newMessageAddedSuccessfully,
    required TResult Function(ChatMessagesLoadSuccess value)
        messagesLoadSuccess,
  }) {
    return messagesLoadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChatInProgress value)? inProgress,
    TResult Function(ChatMoreMessagesInProgress value)? moreMessagesInProgress,
    TResult Function(ChatNewMessageAddedSuccessfully value)?
        newMessageAddedSuccessfully,
    TResult Function(ChatMessagesLoadSuccess value)? messagesLoadSuccess,
  }) {
    return messagesLoadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatInProgress value)? inProgress,
    TResult Function(ChatMoreMessagesInProgress value)? moreMessagesInProgress,
    TResult Function(ChatNewMessageAddedSuccessfully value)?
        newMessageAddedSuccessfully,
    TResult Function(ChatMessagesLoadSuccess value)? messagesLoadSuccess,
    required TResult orElse(),
  }) {
    if (messagesLoadSuccess != null) {
      return messagesLoadSuccess(this);
    }
    return orElse();
  }
}

abstract class ChatMessagesLoadSuccess implements ChatState {
  const factory ChatMessagesLoadSuccess(
      UnmodifiableListView<LocalChatMessage> chatMessages,
      bool isCanLoadMore) = _$ChatMessagesLoadSuccess;

  UnmodifiableListView<LocalChatMessage> get chatMessages;
  bool get isCanLoadMore;
  @JsonKey(ignore: true)
  $ChatMessagesLoadSuccessCopyWith<ChatMessagesLoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
