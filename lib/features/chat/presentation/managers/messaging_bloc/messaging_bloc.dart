import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:doors/core/enums/enums.dart';
import 'package:doors/features/chat/data/chat_local_data_source/models/chat_user_info.dart';
import 'package:doors/features/chat/data/chat_local_data_source/models/local_chat_message.dart';
import 'package:doors/features/chat/data/chat_local_data_source/models/media_file.dart';
import 'package:doors/features/chat/data/chat_local_data_source/models/message_meta_data.dart';
import 'package:doors/features/chat/repository/chat_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/rendering.dart' show decodeImageFromList;

part 'messaging_event.dart';
part 'messaging_state.dart';
part 'messaging_bloc.freezed.dart';

class MessagingBloc extends Bloc<MessagingEvent, MessagingState> {
  final ChatRepository _chatRepository;
  late final StreamSubscription _newMessagesStreamSubscription;
  MessagingBloc(this._chatRepository) : super(const MessagingInitial()) {
    on<MessagingEvent>((event, emit) async {
      await event.map(
        newMessageReceived: (event) async =>
            await _onNewMessageReceived(event, emit),
        mediaMessageSended: (event) async =>
            await _onMediaMessageSended(event, emit),
        textMessageSended: (event) async =>
            await _onTextMessageSended(event, emit),
      );
    });

    _newMessagesStreamSubscription =
        _chatRepository.receivedMessagesSteam.listen((event) {
      add(MessagingNewMessageReceived(event));
    });
  }

  Future<void> _onMediaMessageSended(
    MessagingMediaMessageSended event,
    Emitter<MessagingState> emit,
  ) async {
    await _chatRepository.createChatUserIfNotExistsOrUpdate(event.receiverUser);

    final messageMetaData = await _generateMediaMessageMetaData(
      event.mediaMessageType,
      event.mediaFile,
    );
    final mediaMessage = LocalChatMessage.sendMessage(
      textMessage: null,
      mediaFile: MediaFile(file: event.mediaFile, mediaUrl: null),
      messageType: event.mediaMessageType,
      messageMetaData: messageMetaData,
      receiverId: event.receiverUser.userId,
    );

    _chatRepository.sendMediaMessage(mediaMessage);

    emit(MessagingSendingMessageInProgress(mediaMessage));
  }

  Future<void> _onTextMessageSended(
    MessagingTextMessageSended event,
    Emitter<MessagingState> emit,
  ) async {
    await _chatRepository.createChatUserIfNotExistsOrUpdate(event.receiverUser);

    final textMessage = LocalChatMessage.sendMessage(
      textMessage: event.messageText,
      mediaFile: null,
      messageType: MessageType.text,
      messageMetaData: const TextMessageMetaData(),
      receiverId: event.receiverUser.userId,
    );

    _chatRepository.sendTextMessage(textMessage);

    emit(MessagingSendingMessageInProgress(textMessage));
  }

  Future<void> _onNewMessageReceived(
      MessagingNewMessageReceived event, Emitter<MessagingState> emit) async {
    emit(MessagingNewMessageReceivedSuccessfully(event.message));
  }

  @override
  Future<void> close() {
    _newMessagesStreamSubscription.cancel();
    return super.close();
  }

  Future<MessageMetaData> _generateMediaMessageMetaData(
    MessageType messageType,
    File mediaFile,
  ) async {
    try {
      if (messageType == MessageType.image) {
        final imageBytes = await mediaFile.readAsBytes();
        final image = await decodeImageFromList(imageBytes);
        return ImageMessageMetaData(
          imageHight: image.height,
          imageWidth: image.width,
          imageSize: imageBytes.lengthInBytes,
        );
      }
    } catch (error) {
      log(
        'error while generating media message meta data...',
        error: error,
      );
      // fallback values
      return const ImageMessageMetaData(
        imageHight: 500,
        imageWidth: 500,
        imageSize: 0,
      );
    }

    throw 'we need to generate message mate data for this media message type  ${messageType.name}';
  }
}
