part of 'chat_bloc.dart';

@freezed
class ChatState with _$ChatState {
  const factory ChatState.inProgress() = ChatInProgress;

  const factory ChatState.moreMessagesInProgress() = ChatMoreMessagesInProgress;

  const factory ChatState.newMessageAddedSuccessfully(
      LocalChatMessage newMessage) = ChatNewMessageAddedSuccessfully;

  const factory ChatState.messagesLoadSuccess(
    UnmodifiableListView<LocalChatMessage> chatMessages,bool isCanLoadMore
  ) = ChatMessagesLoadSuccess;
}
