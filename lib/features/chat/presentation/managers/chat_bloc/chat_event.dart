part of 'chat_bloc.dart';

@freezed
class ChatEvent with _$ChatEvent {
  const factory ChatEvent.messagesLoaded() = ChatMessagesLoaded;

  /// #### Do not add new Messages directly to this bloc.
  /// To Send (add) new message Use the [MessagingBloc]
  const factory ChatEvent.newMessageAdded(LocalChatMessage newMessage) =
      _ChatNewMessageAdded;
}
