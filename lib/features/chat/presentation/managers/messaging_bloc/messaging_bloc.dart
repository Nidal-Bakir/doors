import 'package:bloc/bloc.dart';
import 'package:doors/core/enums/enums.dart';
import 'package:doors/features/chat/data/chat_local_data_source/models/local_chat_message.dart';
import 'package:doors/features/chat/repository/chat_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'messaging_event.dart';
part 'messaging_state.dart';
part 'messaging_bloc.freezed.dart';

class MessagingBloc extends Bloc<MessagingEvent, MessagingState> {
  final ChatRepository _chatRepository;
  MessagingBloc(this._chatRepository) : super(const MessagingInitial()) {
    on<MessagingEvent>((event, emit) async {
      await event.map(
        newMessageSended: (event) async =>
            await _onNewMessageSended(event, emit),
        newMessageReceived: (event) async =>
            await _onNewMessageReceived(event, emit),
      );
    });

    _chatRepository.startListingForNewMessages().listen((event) {
      add(MessagingNewMessageReceived(event));
    });
  }

  Future<void> _onNewMessageSended(
      MessagingNewMessageSended event, Emitter<MessagingState> emit) async {
    if (event.message.messageType == MessageType.text.name) {
      _chatRepository.sendTextMessage(event.message);
    } else {
      _chatRepository.sendMediaMessage(event.message);
    }
    emit(MessagingSendingMessageInProgress(event.message));
  }

  Future<void> _onNewMessageReceived(
      MessagingNewMessageReceived event, Emitter<MessagingState> emit) async {
    emit(MessagingNewMessageReceivedSuccessfully(event.message));
  }
}
