part of 'messaging_bloc.dart';

@freezed
class MessagingState with _$MessagingState {
  const factory MessagingState.initial() = MessagingInitial;

  const factory MessagingState.sendingMessageInProgress(
      LocalChatMessage message) = MessagingSendingMessageInProgress;

  const factory MessagingState.newMessageReceivedSuccessfully(
      LocalChatMessage message) = MessagingNewMessageReceivedSuccessfully;
}
