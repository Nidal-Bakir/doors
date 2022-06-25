import 'dart:async';

import 'package:doors/core/errors/server_error.dart';
import 'package:doors/core/errors/user_error.dart';
import 'package:doors/core/models/user.dart';
import 'package:doors/features/chat/data/chat_remote_data_source/models/remote_chat_message.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

abstract class ChatRemoteDataSource {
  Stream<RemoteChatMessage> startListingForNewMessages(
    DateTime? lastReceivedMessageDate,
  );

  Stream<LiveQueryClientEvent> liveQueryConnectionStatus();

  Future<UnmodifiableListView<RemoteChatMessage>>
      getMissedMessagesFromRemoteServer(DateTime? lastReceivedMessageDate);

  Future<RemoteChatMessage> sendNewMessage(RemoteChatMessage newMessage);

  Future<void> deleteMessageFromServer(String messageId, bool isTextMessage);

  Future<void> dispose();
}

class ChatRemoteDataSourceImpl extends ChatRemoteDataSource {
  late final _remoteReceivedMessagesSteamController =
      StreamController<RemoteChatMessage>();
      
  late final _messagesLiveQuery = LiveQuery();

  @override
  Stream<RemoteChatMessage> startListingForNewMessages(
    DateTime? lastReceivedMessageDate,
  ) async* {
    final currentUser = (await ParseUser.currentUser()) as User;

    if (currentUser.isAnonymousAccount) {
      throw const AnonymousException('Anonymous user can not have messages');
    }

    final messagesQueryBuilder =
        QueryBuilder<RemoteChatMessage>.name(RemoteChatMessage.keyClassName)
          ..includeObject([RemoteChatMessage.keySender])
          ..excludeKeys(User.keysToExcludeFromQueriesRelatedToUser())
          ..whereEqualTo(
            RemoteChatMessage.keyReceiver,
            currentUser.toPointer(),
          );

    if (lastReceivedMessageDate != null) {
      messagesQueryBuilder.whereGreaterThan(
        RemoteChatMessage.keyMessageCreatedAt,
        lastReceivedMessageDate,
      );
    }

    final subscription =
        await _messagesLiveQuery.client.subscribe(messagesQueryBuilder);

    subscription.on(
      LiveQueryEvent.create,
      (newMessage) {
        _remoteReceivedMessagesSteamController.sink.add(newMessage);
      },
    );

    yield* _remoteReceivedMessagesSteamController.stream;
  }

  @override
  Future<RemoteChatMessage> sendNewMessage(RemoteChatMessage newMessage) async {
    final ParseResponse sendMessageResponse;
    try {
      sendMessageResponse = await newMessage.create();
    } catch (error) {
      throw NoConnectionException(
        'can not send new message \n Error:' + error.toString(),
      );
    }

    if (sendMessageResponse.success &&
        sendMessageResponse.results != null &&
        sendMessageResponse.count != 0) {
      return sendMessageResponse.results!.first;
    } else {
      throw ParseException.extractParseException(sendMessageResponse.error);
    }
  }

  @override
  Future<void> deleteMessageFromServer(
    String messageId,
    bool isTextMessage,
  ) async {
    if (isTextMessage) {
      final textMessageToDelete = RemoteChatMessage()
        ..set(RemoteChatMessage.keyMessageId, messageId);

      final ParseResponse deleteTextMessageResponse;
      try {
        deleteTextMessageResponse = await textMessageToDelete.delete();
      } catch (error) {
        throw NoConnectionException(
          'can not send new message \n Error: ' + error.toString(),
        );
      }

      if (!deleteTextMessageResponse.success) {
        throw ParseException.extractParseException(
            deleteTextMessageResponse.error);
      }
    } else {
      // media message

      final _deletePostImageCloudFunction =
          ParseCloudFunction('deleteMediaMessageInChat');

      final ParseResponse deleteMediaMessageInChatCloudResponse;
      try {
        deleteMediaMessageInChatCloudResponse =
            await _deletePostImageCloudFunction.execute(
          parameters: {
            'messageId': messageId,
          },
        );
      } catch (error) {
        throw NoConnectionException(
          'can not delete media message \n Error: ' + error.toString(),
        );
      }

      if (!deleteMediaMessageInChatCloudResponse.success) {
        throw ParseException.extractParseException(
            deleteMediaMessageInChatCloudResponse.error);
      }
    }
  }

  @override
  Future<UnmodifiableListView<RemoteChatMessage>>
      getMissedMessagesFromRemoteServer(
          DateTime? lastReceivedMessageDate) async {
    final currentUser = (await ParseUser.currentUser()) as User;

    if (currentUser.isAnonymousAccount) {
      throw const AnonymousException('Anonymous user can not have messages');
    }

    final messagesQueryBuilder =
        QueryBuilder<RemoteChatMessage>.name(RemoteChatMessage.keyClassName)
          ..includeObject([RemoteChatMessage.keySender])
          ..excludeKeys(User.keysToExcludeFromQueriesRelatedToUser())
          ..whereEqualTo(
            RemoteChatMessage.keyReceiver,
            currentUser.toPointer(),
          );

    if (lastReceivedMessageDate != null) {
      messagesQueryBuilder.whereGreaterThan(
        RemoteChatMessage.keyMessageCreatedAt,
        lastReceivedMessageDate,
      );
    }

    final ParseResponse messagesQueryResponse;
    try {
      messagesQueryResponse = await messagesQueryBuilder.query();
    } catch (error) {
      throw NoConnectionException(
          'can not get the missed Messages form the server.\n Error: ' +
              error.toString());
    }

    if (messagesQueryResponse.success &&
        messagesQueryResponse.error == null &&
        messagesQueryResponse.results != null) {
      return UnmodifiableListView(
        List<RemoteChatMessage>.from(
          messagesQueryResponse.results!,
        ),
      );
    } else {
      final error =
          ParseException.extractParseException(messagesQueryResponse.error);
      // parse sdk will return error in case no results found
      if (error is ParseSuccessResponseWithNoResults) {
        return UnmodifiableListView([]);
      }
      throw error;
    }
  }

  @override
  Stream<LiveQueryClientEvent> liveQueryConnectionStatus() {
    return _messagesLiveQuery.client.getClientEventStream;
  }

  @override
  Future<void> dispose() async {
    await _messagesLiveQuery.client.disconnect();
    await _remoteReceivedMessagesSteamController.close();
  }
}
