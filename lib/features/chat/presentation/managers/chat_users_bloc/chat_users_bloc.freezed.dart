// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_users_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ChatUsersEventTearOff {
  const _$ChatUsersEventTearOff();

  ChatUsersLoaded loaded() {
    return const ChatUsersLoaded();
  }

  _ChatUsersNewMessageDispatched newMessageDispatched(
      LocalChatMessage dispatchedMessage) {
    return _ChatUsersNewMessageDispatched(
      dispatchedMessage,
    );
  }

  ChatUsersUnreadMessagesCountRested unreadMessagesCountRested(String userId) {
    return ChatUsersUnreadMessagesCountRested(
      userId,
    );
  }
}

/// @nodoc
const $ChatUsersEvent = _$ChatUsersEventTearOff();

/// @nodoc
mixin _$ChatUsersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function(LocalChatMessage dispatchedMessage)
        newMessageDispatched,
    required TResult Function(String userId) unreadMessagesCountRested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function(LocalChatMessage dispatchedMessage)? newMessageDispatched,
    TResult Function(String userId)? unreadMessagesCountRested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function(LocalChatMessage dispatchedMessage)? newMessageDispatched,
    TResult Function(String userId)? unreadMessagesCountRested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatUsersLoaded value) loaded,
    required TResult Function(_ChatUsersNewMessageDispatched value)
        newMessageDispatched,
    required TResult Function(ChatUsersUnreadMessagesCountRested value)
        unreadMessagesCountRested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChatUsersLoaded value)? loaded,
    TResult Function(_ChatUsersNewMessageDispatched value)?
        newMessageDispatched,
    TResult Function(ChatUsersUnreadMessagesCountRested value)?
        unreadMessagesCountRested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatUsersLoaded value)? loaded,
    TResult Function(_ChatUsersNewMessageDispatched value)?
        newMessageDispatched,
    TResult Function(ChatUsersUnreadMessagesCountRested value)?
        unreadMessagesCountRested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatUsersEventCopyWith<$Res> {
  factory $ChatUsersEventCopyWith(
          ChatUsersEvent value, $Res Function(ChatUsersEvent) then) =
      _$ChatUsersEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatUsersEventCopyWithImpl<$Res>
    implements $ChatUsersEventCopyWith<$Res> {
  _$ChatUsersEventCopyWithImpl(this._value, this._then);

  final ChatUsersEvent _value;
  // ignore: unused_field
  final $Res Function(ChatUsersEvent) _then;
}

/// @nodoc
abstract class $ChatUsersLoadedCopyWith<$Res> {
  factory $ChatUsersLoadedCopyWith(
          ChatUsersLoaded value, $Res Function(ChatUsersLoaded) then) =
      _$ChatUsersLoadedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatUsersLoadedCopyWithImpl<$Res>
    extends _$ChatUsersEventCopyWithImpl<$Res>
    implements $ChatUsersLoadedCopyWith<$Res> {
  _$ChatUsersLoadedCopyWithImpl(
      ChatUsersLoaded _value, $Res Function(ChatUsersLoaded) _then)
      : super(_value, (v) => _then(v as ChatUsersLoaded));

  @override
  ChatUsersLoaded get _value => super._value as ChatUsersLoaded;
}

/// @nodoc

class _$ChatUsersLoaded implements ChatUsersLoaded {
  const _$ChatUsersLoaded();

  @override
  String toString() {
    return 'ChatUsersEvent.loaded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ChatUsersLoaded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function(LocalChatMessage dispatchedMessage)
        newMessageDispatched,
    required TResult Function(String userId) unreadMessagesCountRested,
  }) {
    return loaded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function(LocalChatMessage dispatchedMessage)? newMessageDispatched,
    TResult Function(String userId)? unreadMessagesCountRested,
  }) {
    return loaded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function(LocalChatMessage dispatchedMessage)? newMessageDispatched,
    TResult Function(String userId)? unreadMessagesCountRested,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatUsersLoaded value) loaded,
    required TResult Function(_ChatUsersNewMessageDispatched value)
        newMessageDispatched,
    required TResult Function(ChatUsersUnreadMessagesCountRested value)
        unreadMessagesCountRested,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChatUsersLoaded value)? loaded,
    TResult Function(_ChatUsersNewMessageDispatched value)?
        newMessageDispatched,
    TResult Function(ChatUsersUnreadMessagesCountRested value)?
        unreadMessagesCountRested,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatUsersLoaded value)? loaded,
    TResult Function(_ChatUsersNewMessageDispatched value)?
        newMessageDispatched,
    TResult Function(ChatUsersUnreadMessagesCountRested value)?
        unreadMessagesCountRested,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ChatUsersLoaded implements ChatUsersEvent {
  const factory ChatUsersLoaded() = _$ChatUsersLoaded;
}

/// @nodoc
abstract class _$ChatUsersNewMessageDispatchedCopyWith<$Res> {
  factory _$ChatUsersNewMessageDispatchedCopyWith(
          _ChatUsersNewMessageDispatched value,
          $Res Function(_ChatUsersNewMessageDispatched) then) =
      __$ChatUsersNewMessageDispatchedCopyWithImpl<$Res>;
  $Res call({LocalChatMessage dispatchedMessage});
}

/// @nodoc
class __$ChatUsersNewMessageDispatchedCopyWithImpl<$Res>
    extends _$ChatUsersEventCopyWithImpl<$Res>
    implements _$ChatUsersNewMessageDispatchedCopyWith<$Res> {
  __$ChatUsersNewMessageDispatchedCopyWithImpl(
      _ChatUsersNewMessageDispatched _value,
      $Res Function(_ChatUsersNewMessageDispatched) _then)
      : super(_value, (v) => _then(v as _ChatUsersNewMessageDispatched));

  @override
  _ChatUsersNewMessageDispatched get _value =>
      super._value as _ChatUsersNewMessageDispatched;

  @override
  $Res call({
    Object? dispatchedMessage = freezed,
  }) {
    return _then(_ChatUsersNewMessageDispatched(
      dispatchedMessage == freezed
          ? _value.dispatchedMessage
          : dispatchedMessage // ignore: cast_nullable_to_non_nullable
              as LocalChatMessage,
    ));
  }
}

/// @nodoc

class _$_ChatUsersNewMessageDispatched
    implements _ChatUsersNewMessageDispatched {
  const _$_ChatUsersNewMessageDispatched(this.dispatchedMessage);

  @override
  final LocalChatMessage dispatchedMessage;

  @override
  String toString() {
    return 'ChatUsersEvent.newMessageDispatched(dispatchedMessage: $dispatchedMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChatUsersNewMessageDispatched &&
            const DeepCollectionEquality()
                .equals(other.dispatchedMessage, dispatchedMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(dispatchedMessage));

  @JsonKey(ignore: true)
  @override
  _$ChatUsersNewMessageDispatchedCopyWith<_ChatUsersNewMessageDispatched>
      get copyWith => __$ChatUsersNewMessageDispatchedCopyWithImpl<
          _ChatUsersNewMessageDispatched>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function(LocalChatMessage dispatchedMessage)
        newMessageDispatched,
    required TResult Function(String userId) unreadMessagesCountRested,
  }) {
    return newMessageDispatched(dispatchedMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function(LocalChatMessage dispatchedMessage)? newMessageDispatched,
    TResult Function(String userId)? unreadMessagesCountRested,
  }) {
    return newMessageDispatched?.call(dispatchedMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function(LocalChatMessage dispatchedMessage)? newMessageDispatched,
    TResult Function(String userId)? unreadMessagesCountRested,
    required TResult orElse(),
  }) {
    if (newMessageDispatched != null) {
      return newMessageDispatched(dispatchedMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatUsersLoaded value) loaded,
    required TResult Function(_ChatUsersNewMessageDispatched value)
        newMessageDispatched,
    required TResult Function(ChatUsersUnreadMessagesCountRested value)
        unreadMessagesCountRested,
  }) {
    return newMessageDispatched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChatUsersLoaded value)? loaded,
    TResult Function(_ChatUsersNewMessageDispatched value)?
        newMessageDispatched,
    TResult Function(ChatUsersUnreadMessagesCountRested value)?
        unreadMessagesCountRested,
  }) {
    return newMessageDispatched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatUsersLoaded value)? loaded,
    TResult Function(_ChatUsersNewMessageDispatched value)?
        newMessageDispatched,
    TResult Function(ChatUsersUnreadMessagesCountRested value)?
        unreadMessagesCountRested,
    required TResult orElse(),
  }) {
    if (newMessageDispatched != null) {
      return newMessageDispatched(this);
    }
    return orElse();
  }
}

abstract class _ChatUsersNewMessageDispatched implements ChatUsersEvent {
  const factory _ChatUsersNewMessageDispatched(
      LocalChatMessage dispatchedMessage) = _$_ChatUsersNewMessageDispatched;

  LocalChatMessage get dispatchedMessage;
  @JsonKey(ignore: true)
  _$ChatUsersNewMessageDispatchedCopyWith<_ChatUsersNewMessageDispatched>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatUsersUnreadMessagesCountRestedCopyWith<$Res> {
  factory $ChatUsersUnreadMessagesCountRestedCopyWith(
          ChatUsersUnreadMessagesCountRested value,
          $Res Function(ChatUsersUnreadMessagesCountRested) then) =
      _$ChatUsersUnreadMessagesCountRestedCopyWithImpl<$Res>;
  $Res call({String userId});
}

/// @nodoc
class _$ChatUsersUnreadMessagesCountRestedCopyWithImpl<$Res>
    extends _$ChatUsersEventCopyWithImpl<$Res>
    implements $ChatUsersUnreadMessagesCountRestedCopyWith<$Res> {
  _$ChatUsersUnreadMessagesCountRestedCopyWithImpl(
      ChatUsersUnreadMessagesCountRested _value,
      $Res Function(ChatUsersUnreadMessagesCountRested) _then)
      : super(_value, (v) => _then(v as ChatUsersUnreadMessagesCountRested));

  @override
  ChatUsersUnreadMessagesCountRested get _value =>
      super._value as ChatUsersUnreadMessagesCountRested;

  @override
  $Res call({
    Object? userId = freezed,
  }) {
    return _then(ChatUsersUnreadMessagesCountRested(
      userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChatUsersUnreadMessagesCountRested
    implements ChatUsersUnreadMessagesCountRested {
  const _$ChatUsersUnreadMessagesCountRested(this.userId);

  @override
  final String userId;

  @override
  String toString() {
    return 'ChatUsersEvent.unreadMessagesCountRested(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChatUsersUnreadMessagesCountRested &&
            const DeepCollectionEquality().equals(other.userId, userId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(userId));

  @JsonKey(ignore: true)
  @override
  $ChatUsersUnreadMessagesCountRestedCopyWith<
          ChatUsersUnreadMessagesCountRested>
      get copyWith => _$ChatUsersUnreadMessagesCountRestedCopyWithImpl<
          ChatUsersUnreadMessagesCountRested>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loaded,
    required TResult Function(LocalChatMessage dispatchedMessage)
        newMessageDispatched,
    required TResult Function(String userId) unreadMessagesCountRested,
  }) {
    return unreadMessagesCountRested(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function(LocalChatMessage dispatchedMessage)? newMessageDispatched,
    TResult Function(String userId)? unreadMessagesCountRested,
  }) {
    return unreadMessagesCountRested?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loaded,
    TResult Function(LocalChatMessage dispatchedMessage)? newMessageDispatched,
    TResult Function(String userId)? unreadMessagesCountRested,
    required TResult orElse(),
  }) {
    if (unreadMessagesCountRested != null) {
      return unreadMessagesCountRested(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatUsersLoaded value) loaded,
    required TResult Function(_ChatUsersNewMessageDispatched value)
        newMessageDispatched,
    required TResult Function(ChatUsersUnreadMessagesCountRested value)
        unreadMessagesCountRested,
  }) {
    return unreadMessagesCountRested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChatUsersLoaded value)? loaded,
    TResult Function(_ChatUsersNewMessageDispatched value)?
        newMessageDispatched,
    TResult Function(ChatUsersUnreadMessagesCountRested value)?
        unreadMessagesCountRested,
  }) {
    return unreadMessagesCountRested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatUsersLoaded value)? loaded,
    TResult Function(_ChatUsersNewMessageDispatched value)?
        newMessageDispatched,
    TResult Function(ChatUsersUnreadMessagesCountRested value)?
        unreadMessagesCountRested,
    required TResult orElse(),
  }) {
    if (unreadMessagesCountRested != null) {
      return unreadMessagesCountRested(this);
    }
    return orElse();
  }
}

abstract class ChatUsersUnreadMessagesCountRested implements ChatUsersEvent {
  const factory ChatUsersUnreadMessagesCountRested(String userId) =
      _$ChatUsersUnreadMessagesCountRested;

  String get userId;
  @JsonKey(ignore: true)
  $ChatUsersUnreadMessagesCountRestedCopyWith<
          ChatUsersUnreadMessagesCountRested>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
class _$ChatUsersStateTearOff {
  const _$ChatUsersStateTearOff();

  ChatUsersInProgress inProgress() {
    return const ChatUsersInProgress();
  }

  ChatUsersLoadSuccess loadSuccess(
      UnmodifiableListView<ChatUserInfo> chatUsers) {
    return ChatUsersLoadSuccess(
      chatUsers,
    );
  }

  ChatUsersOrderUpdateSuccess orderUpdateSuccess(
      int oldIndexOrder, ChatUserInfo chatUserInfo) {
    return ChatUsersOrderUpdateSuccess(
      oldIndexOrder,
      chatUserInfo,
    );
  }

  ChatUsersNewChatUserAddedSuccess newChatUserAddedSuccess(
      ChatUserInfo newChatUserInfo) {
    return ChatUsersNewChatUserAddedSuccess(
      newChatUserInfo,
    );
  }
}

/// @nodoc
const $ChatUsersState = _$ChatUsersStateTearOff();

/// @nodoc
mixin _$ChatUsersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function(UnmodifiableListView<ChatUserInfo> chatUsers)
        loadSuccess,
    required TResult Function(int oldIndexOrder, ChatUserInfo chatUserInfo)
        orderUpdateSuccess,
    required TResult Function(ChatUserInfo newChatUserInfo)
        newChatUserAddedSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(UnmodifiableListView<ChatUserInfo> chatUsers)? loadSuccess,
    TResult Function(int oldIndexOrder, ChatUserInfo chatUserInfo)?
        orderUpdateSuccess,
    TResult Function(ChatUserInfo newChatUserInfo)? newChatUserAddedSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(UnmodifiableListView<ChatUserInfo> chatUsers)? loadSuccess,
    TResult Function(int oldIndexOrder, ChatUserInfo chatUserInfo)?
        orderUpdateSuccess,
    TResult Function(ChatUserInfo newChatUserInfo)? newChatUserAddedSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatUsersInProgress value) inProgress,
    required TResult Function(ChatUsersLoadSuccess value) loadSuccess,
    required TResult Function(ChatUsersOrderUpdateSuccess value)
        orderUpdateSuccess,
    required TResult Function(ChatUsersNewChatUserAddedSuccess value)
        newChatUserAddedSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChatUsersInProgress value)? inProgress,
    TResult Function(ChatUsersLoadSuccess value)? loadSuccess,
    TResult Function(ChatUsersOrderUpdateSuccess value)? orderUpdateSuccess,
    TResult Function(ChatUsersNewChatUserAddedSuccess value)?
        newChatUserAddedSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatUsersInProgress value)? inProgress,
    TResult Function(ChatUsersLoadSuccess value)? loadSuccess,
    TResult Function(ChatUsersOrderUpdateSuccess value)? orderUpdateSuccess,
    TResult Function(ChatUsersNewChatUserAddedSuccess value)?
        newChatUserAddedSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatUsersStateCopyWith<$Res> {
  factory $ChatUsersStateCopyWith(
          ChatUsersState value, $Res Function(ChatUsersState) then) =
      _$ChatUsersStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatUsersStateCopyWithImpl<$Res>
    implements $ChatUsersStateCopyWith<$Res> {
  _$ChatUsersStateCopyWithImpl(this._value, this._then);

  final ChatUsersState _value;
  // ignore: unused_field
  final $Res Function(ChatUsersState) _then;
}

/// @nodoc
abstract class $ChatUsersInProgressCopyWith<$Res> {
  factory $ChatUsersInProgressCopyWith(
          ChatUsersInProgress value, $Res Function(ChatUsersInProgress) then) =
      _$ChatUsersInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class _$ChatUsersInProgressCopyWithImpl<$Res>
    extends _$ChatUsersStateCopyWithImpl<$Res>
    implements $ChatUsersInProgressCopyWith<$Res> {
  _$ChatUsersInProgressCopyWithImpl(
      ChatUsersInProgress _value, $Res Function(ChatUsersInProgress) _then)
      : super(_value, (v) => _then(v as ChatUsersInProgress));

  @override
  ChatUsersInProgress get _value => super._value as ChatUsersInProgress;
}

/// @nodoc

class _$ChatUsersInProgress implements ChatUsersInProgress {
  const _$ChatUsersInProgress();

  @override
  String toString() {
    return 'ChatUsersState.inProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ChatUsersInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function(UnmodifiableListView<ChatUserInfo> chatUsers)
        loadSuccess,
    required TResult Function(int oldIndexOrder, ChatUserInfo chatUserInfo)
        orderUpdateSuccess,
    required TResult Function(ChatUserInfo newChatUserInfo)
        newChatUserAddedSuccess,
  }) {
    return inProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(UnmodifiableListView<ChatUserInfo> chatUsers)? loadSuccess,
    TResult Function(int oldIndexOrder, ChatUserInfo chatUserInfo)?
        orderUpdateSuccess,
    TResult Function(ChatUserInfo newChatUserInfo)? newChatUserAddedSuccess,
  }) {
    return inProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(UnmodifiableListView<ChatUserInfo> chatUsers)? loadSuccess,
    TResult Function(int oldIndexOrder, ChatUserInfo chatUserInfo)?
        orderUpdateSuccess,
    TResult Function(ChatUserInfo newChatUserInfo)? newChatUserAddedSuccess,
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
    required TResult Function(ChatUsersInProgress value) inProgress,
    required TResult Function(ChatUsersLoadSuccess value) loadSuccess,
    required TResult Function(ChatUsersOrderUpdateSuccess value)
        orderUpdateSuccess,
    required TResult Function(ChatUsersNewChatUserAddedSuccess value)
        newChatUserAddedSuccess,
  }) {
    return inProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChatUsersInProgress value)? inProgress,
    TResult Function(ChatUsersLoadSuccess value)? loadSuccess,
    TResult Function(ChatUsersOrderUpdateSuccess value)? orderUpdateSuccess,
    TResult Function(ChatUsersNewChatUserAddedSuccess value)?
        newChatUserAddedSuccess,
  }) {
    return inProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatUsersInProgress value)? inProgress,
    TResult Function(ChatUsersLoadSuccess value)? loadSuccess,
    TResult Function(ChatUsersOrderUpdateSuccess value)? orderUpdateSuccess,
    TResult Function(ChatUsersNewChatUserAddedSuccess value)?
        newChatUserAddedSuccess,
    required TResult orElse(),
  }) {
    if (inProgress != null) {
      return inProgress(this);
    }
    return orElse();
  }
}

abstract class ChatUsersInProgress implements ChatUsersState {
  const factory ChatUsersInProgress() = _$ChatUsersInProgress;
}

/// @nodoc
abstract class $ChatUsersLoadSuccessCopyWith<$Res> {
  factory $ChatUsersLoadSuccessCopyWith(ChatUsersLoadSuccess value,
          $Res Function(ChatUsersLoadSuccess) then) =
      _$ChatUsersLoadSuccessCopyWithImpl<$Res>;
  $Res call({UnmodifiableListView<ChatUserInfo> chatUsers});
}

/// @nodoc
class _$ChatUsersLoadSuccessCopyWithImpl<$Res>
    extends _$ChatUsersStateCopyWithImpl<$Res>
    implements $ChatUsersLoadSuccessCopyWith<$Res> {
  _$ChatUsersLoadSuccessCopyWithImpl(
      ChatUsersLoadSuccess _value, $Res Function(ChatUsersLoadSuccess) _then)
      : super(_value, (v) => _then(v as ChatUsersLoadSuccess));

  @override
  ChatUsersLoadSuccess get _value => super._value as ChatUsersLoadSuccess;

  @override
  $Res call({
    Object? chatUsers = freezed,
  }) {
    return _then(ChatUsersLoadSuccess(
      chatUsers == freezed
          ? _value.chatUsers
          : chatUsers // ignore: cast_nullable_to_non_nullable
              as UnmodifiableListView<ChatUserInfo>,
    ));
  }
}

/// @nodoc

class _$ChatUsersLoadSuccess implements ChatUsersLoadSuccess {
  const _$ChatUsersLoadSuccess(this.chatUsers);

  @override
  final UnmodifiableListView<ChatUserInfo> chatUsers;

  @override
  String toString() {
    return 'ChatUsersState.loadSuccess(chatUsers: $chatUsers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChatUsersLoadSuccess &&
            const DeepCollectionEquality().equals(other.chatUsers, chatUsers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(chatUsers));

  @JsonKey(ignore: true)
  @override
  $ChatUsersLoadSuccessCopyWith<ChatUsersLoadSuccess> get copyWith =>
      _$ChatUsersLoadSuccessCopyWithImpl<ChatUsersLoadSuccess>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function(UnmodifiableListView<ChatUserInfo> chatUsers)
        loadSuccess,
    required TResult Function(int oldIndexOrder, ChatUserInfo chatUserInfo)
        orderUpdateSuccess,
    required TResult Function(ChatUserInfo newChatUserInfo)
        newChatUserAddedSuccess,
  }) {
    return loadSuccess(chatUsers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(UnmodifiableListView<ChatUserInfo> chatUsers)? loadSuccess,
    TResult Function(int oldIndexOrder, ChatUserInfo chatUserInfo)?
        orderUpdateSuccess,
    TResult Function(ChatUserInfo newChatUserInfo)? newChatUserAddedSuccess,
  }) {
    return loadSuccess?.call(chatUsers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(UnmodifiableListView<ChatUserInfo> chatUsers)? loadSuccess,
    TResult Function(int oldIndexOrder, ChatUserInfo chatUserInfo)?
        orderUpdateSuccess,
    TResult Function(ChatUserInfo newChatUserInfo)? newChatUserAddedSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(chatUsers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatUsersInProgress value) inProgress,
    required TResult Function(ChatUsersLoadSuccess value) loadSuccess,
    required TResult Function(ChatUsersOrderUpdateSuccess value)
        orderUpdateSuccess,
    required TResult Function(ChatUsersNewChatUserAddedSuccess value)
        newChatUserAddedSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChatUsersInProgress value)? inProgress,
    TResult Function(ChatUsersLoadSuccess value)? loadSuccess,
    TResult Function(ChatUsersOrderUpdateSuccess value)? orderUpdateSuccess,
    TResult Function(ChatUsersNewChatUserAddedSuccess value)?
        newChatUserAddedSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatUsersInProgress value)? inProgress,
    TResult Function(ChatUsersLoadSuccess value)? loadSuccess,
    TResult Function(ChatUsersOrderUpdateSuccess value)? orderUpdateSuccess,
    TResult Function(ChatUsersNewChatUserAddedSuccess value)?
        newChatUserAddedSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class ChatUsersLoadSuccess implements ChatUsersState {
  const factory ChatUsersLoadSuccess(
      UnmodifiableListView<ChatUserInfo> chatUsers) = _$ChatUsersLoadSuccess;

  UnmodifiableListView<ChatUserInfo> get chatUsers;
  @JsonKey(ignore: true)
  $ChatUsersLoadSuccessCopyWith<ChatUsersLoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatUsersOrderUpdateSuccessCopyWith<$Res> {
  factory $ChatUsersOrderUpdateSuccessCopyWith(
          ChatUsersOrderUpdateSuccess value,
          $Res Function(ChatUsersOrderUpdateSuccess) then) =
      _$ChatUsersOrderUpdateSuccessCopyWithImpl<$Res>;
  $Res call({int oldIndexOrder, ChatUserInfo chatUserInfo});
}

/// @nodoc
class _$ChatUsersOrderUpdateSuccessCopyWithImpl<$Res>
    extends _$ChatUsersStateCopyWithImpl<$Res>
    implements $ChatUsersOrderUpdateSuccessCopyWith<$Res> {
  _$ChatUsersOrderUpdateSuccessCopyWithImpl(ChatUsersOrderUpdateSuccess _value,
      $Res Function(ChatUsersOrderUpdateSuccess) _then)
      : super(_value, (v) => _then(v as ChatUsersOrderUpdateSuccess));

  @override
  ChatUsersOrderUpdateSuccess get _value =>
      super._value as ChatUsersOrderUpdateSuccess;

  @override
  $Res call({
    Object? oldIndexOrder = freezed,
    Object? chatUserInfo = freezed,
  }) {
    return _then(ChatUsersOrderUpdateSuccess(
      oldIndexOrder == freezed
          ? _value.oldIndexOrder
          : oldIndexOrder // ignore: cast_nullable_to_non_nullable
              as int,
      chatUserInfo == freezed
          ? _value.chatUserInfo
          : chatUserInfo // ignore: cast_nullable_to_non_nullable
              as ChatUserInfo,
    ));
  }
}

/// @nodoc

class _$ChatUsersOrderUpdateSuccess implements ChatUsersOrderUpdateSuccess {
  const _$ChatUsersOrderUpdateSuccess(this.oldIndexOrder, this.chatUserInfo);

  @override
  final int oldIndexOrder;
  @override
  final ChatUserInfo chatUserInfo;

  @override
  String toString() {
    return 'ChatUsersState.orderUpdateSuccess(oldIndexOrder: $oldIndexOrder, chatUserInfo: $chatUserInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChatUsersOrderUpdateSuccess &&
            const DeepCollectionEquality()
                .equals(other.oldIndexOrder, oldIndexOrder) &&
            const DeepCollectionEquality()
                .equals(other.chatUserInfo, chatUserInfo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(oldIndexOrder),
      const DeepCollectionEquality().hash(chatUserInfo));

  @JsonKey(ignore: true)
  @override
  $ChatUsersOrderUpdateSuccessCopyWith<ChatUsersOrderUpdateSuccess>
      get copyWith => _$ChatUsersOrderUpdateSuccessCopyWithImpl<
          ChatUsersOrderUpdateSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function(UnmodifiableListView<ChatUserInfo> chatUsers)
        loadSuccess,
    required TResult Function(int oldIndexOrder, ChatUserInfo chatUserInfo)
        orderUpdateSuccess,
    required TResult Function(ChatUserInfo newChatUserInfo)
        newChatUserAddedSuccess,
  }) {
    return orderUpdateSuccess(oldIndexOrder, chatUserInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(UnmodifiableListView<ChatUserInfo> chatUsers)? loadSuccess,
    TResult Function(int oldIndexOrder, ChatUserInfo chatUserInfo)?
        orderUpdateSuccess,
    TResult Function(ChatUserInfo newChatUserInfo)? newChatUserAddedSuccess,
  }) {
    return orderUpdateSuccess?.call(oldIndexOrder, chatUserInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(UnmodifiableListView<ChatUserInfo> chatUsers)? loadSuccess,
    TResult Function(int oldIndexOrder, ChatUserInfo chatUserInfo)?
        orderUpdateSuccess,
    TResult Function(ChatUserInfo newChatUserInfo)? newChatUserAddedSuccess,
    required TResult orElse(),
  }) {
    if (orderUpdateSuccess != null) {
      return orderUpdateSuccess(oldIndexOrder, chatUserInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatUsersInProgress value) inProgress,
    required TResult Function(ChatUsersLoadSuccess value) loadSuccess,
    required TResult Function(ChatUsersOrderUpdateSuccess value)
        orderUpdateSuccess,
    required TResult Function(ChatUsersNewChatUserAddedSuccess value)
        newChatUserAddedSuccess,
  }) {
    return orderUpdateSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChatUsersInProgress value)? inProgress,
    TResult Function(ChatUsersLoadSuccess value)? loadSuccess,
    TResult Function(ChatUsersOrderUpdateSuccess value)? orderUpdateSuccess,
    TResult Function(ChatUsersNewChatUserAddedSuccess value)?
        newChatUserAddedSuccess,
  }) {
    return orderUpdateSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatUsersInProgress value)? inProgress,
    TResult Function(ChatUsersLoadSuccess value)? loadSuccess,
    TResult Function(ChatUsersOrderUpdateSuccess value)? orderUpdateSuccess,
    TResult Function(ChatUsersNewChatUserAddedSuccess value)?
        newChatUserAddedSuccess,
    required TResult orElse(),
  }) {
    if (orderUpdateSuccess != null) {
      return orderUpdateSuccess(this);
    }
    return orElse();
  }
}

abstract class ChatUsersOrderUpdateSuccess implements ChatUsersState {
  const factory ChatUsersOrderUpdateSuccess(
          int oldIndexOrder, ChatUserInfo chatUserInfo) =
      _$ChatUsersOrderUpdateSuccess;

  int get oldIndexOrder;
  ChatUserInfo get chatUserInfo;
  @JsonKey(ignore: true)
  $ChatUsersOrderUpdateSuccessCopyWith<ChatUsersOrderUpdateSuccess>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatUsersNewChatUserAddedSuccessCopyWith<$Res> {
  factory $ChatUsersNewChatUserAddedSuccessCopyWith(
          ChatUsersNewChatUserAddedSuccess value,
          $Res Function(ChatUsersNewChatUserAddedSuccess) then) =
      _$ChatUsersNewChatUserAddedSuccessCopyWithImpl<$Res>;
  $Res call({ChatUserInfo newChatUserInfo});
}

/// @nodoc
class _$ChatUsersNewChatUserAddedSuccessCopyWithImpl<$Res>
    extends _$ChatUsersStateCopyWithImpl<$Res>
    implements $ChatUsersNewChatUserAddedSuccessCopyWith<$Res> {
  _$ChatUsersNewChatUserAddedSuccessCopyWithImpl(
      ChatUsersNewChatUserAddedSuccess _value,
      $Res Function(ChatUsersNewChatUserAddedSuccess) _then)
      : super(_value, (v) => _then(v as ChatUsersNewChatUserAddedSuccess));

  @override
  ChatUsersNewChatUserAddedSuccess get _value =>
      super._value as ChatUsersNewChatUserAddedSuccess;

  @override
  $Res call({
    Object? newChatUserInfo = freezed,
  }) {
    return _then(ChatUsersNewChatUserAddedSuccess(
      newChatUserInfo == freezed
          ? _value.newChatUserInfo
          : newChatUserInfo // ignore: cast_nullable_to_non_nullable
              as ChatUserInfo,
    ));
  }
}

/// @nodoc

class _$ChatUsersNewChatUserAddedSuccess
    implements ChatUsersNewChatUserAddedSuccess {
  const _$ChatUsersNewChatUserAddedSuccess(this.newChatUserInfo);

  @override
  final ChatUserInfo newChatUserInfo;

  @override
  String toString() {
    return 'ChatUsersState.newChatUserAddedSuccess(newChatUserInfo: $newChatUserInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ChatUsersNewChatUserAddedSuccess &&
            const DeepCollectionEquality()
                .equals(other.newChatUserInfo, newChatUserInfo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(newChatUserInfo));

  @JsonKey(ignore: true)
  @override
  $ChatUsersNewChatUserAddedSuccessCopyWith<ChatUsersNewChatUserAddedSuccess>
      get copyWith => _$ChatUsersNewChatUserAddedSuccessCopyWithImpl<
          ChatUsersNewChatUserAddedSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inProgress,
    required TResult Function(UnmodifiableListView<ChatUserInfo> chatUsers)
        loadSuccess,
    required TResult Function(int oldIndexOrder, ChatUserInfo chatUserInfo)
        orderUpdateSuccess,
    required TResult Function(ChatUserInfo newChatUserInfo)
        newChatUserAddedSuccess,
  }) {
    return newChatUserAddedSuccess(newChatUserInfo);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(UnmodifiableListView<ChatUserInfo> chatUsers)? loadSuccess,
    TResult Function(int oldIndexOrder, ChatUserInfo chatUserInfo)?
        orderUpdateSuccess,
    TResult Function(ChatUserInfo newChatUserInfo)? newChatUserAddedSuccess,
  }) {
    return newChatUserAddedSuccess?.call(newChatUserInfo);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? inProgress,
    TResult Function(UnmodifiableListView<ChatUserInfo> chatUsers)? loadSuccess,
    TResult Function(int oldIndexOrder, ChatUserInfo chatUserInfo)?
        orderUpdateSuccess,
    TResult Function(ChatUserInfo newChatUserInfo)? newChatUserAddedSuccess,
    required TResult orElse(),
  }) {
    if (newChatUserAddedSuccess != null) {
      return newChatUserAddedSuccess(newChatUserInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatUsersInProgress value) inProgress,
    required TResult Function(ChatUsersLoadSuccess value) loadSuccess,
    required TResult Function(ChatUsersOrderUpdateSuccess value)
        orderUpdateSuccess,
    required TResult Function(ChatUsersNewChatUserAddedSuccess value)
        newChatUserAddedSuccess,
  }) {
    return newChatUserAddedSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ChatUsersInProgress value)? inProgress,
    TResult Function(ChatUsersLoadSuccess value)? loadSuccess,
    TResult Function(ChatUsersOrderUpdateSuccess value)? orderUpdateSuccess,
    TResult Function(ChatUsersNewChatUserAddedSuccess value)?
        newChatUserAddedSuccess,
  }) {
    return newChatUserAddedSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatUsersInProgress value)? inProgress,
    TResult Function(ChatUsersLoadSuccess value)? loadSuccess,
    TResult Function(ChatUsersOrderUpdateSuccess value)? orderUpdateSuccess,
    TResult Function(ChatUsersNewChatUserAddedSuccess value)?
        newChatUserAddedSuccess,
    required TResult orElse(),
  }) {
    if (newChatUserAddedSuccess != null) {
      return newChatUserAddedSuccess(this);
    }
    return orElse();
  }
}

abstract class ChatUsersNewChatUserAddedSuccess implements ChatUsersState {
  const factory ChatUsersNewChatUserAddedSuccess(ChatUserInfo newChatUserInfo) =
      _$ChatUsersNewChatUserAddedSuccess;

  ChatUserInfo get newChatUserInfo;
  @JsonKey(ignore: true)
  $ChatUsersNewChatUserAddedSuccessCopyWith<ChatUsersNewChatUserAddedSuccess>
      get copyWith => throw _privateConstructorUsedError;
}
