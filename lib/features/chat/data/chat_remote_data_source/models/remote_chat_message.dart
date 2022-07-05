import 'dart:convert';

import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/models/user.dart';
import 'package:equatable/equatable.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class RemoteChatMessage extends ParseObject with EquatableMixin {
  RemoteChatMessage() : super.clone(keyClassName);

  RemoteChatMessage.clone(Map map) : this();

  @override
  clone(Map<String, dynamic> map) =>
      RemoteChatMessage.clone(map)..fromJson(map);

  static const keyClassName = 'Chat';

  static const keyMessageId = keyVarObjectId;
  static const keyTextMessage = 'textMessage';
  static const keyMedia = 'media';
  static const keyThumbnail = 'thumbnail';
  static const keyMessageType = 'messageType';
  static const keySentDate = 'sentDate';
  static const keySender = 'sender';
  static const keyReceiver = 'receiver';
  static const keyMetaData = 'mateData';
  static const keyMessageCreatedAt = keyVarCreatedAt;

  String get messageId => get(keyMessageId) as String;

  String? get textMessage => get(keyTextMessage) as String?;
  set textMessage(String? textMessage) => set(keyTextMessage, textMessage);

  ParseFile? get media => get(keyMedia) as ParseFile?;
  set media(ParseFile? textMessage) => set(keyMedia, textMessage);

  ParseFile? get thumbnail => get(keyThumbnail) as ParseFile?;

  String get receivedMessageType => (get(keyMessageType) as String);

  set messageType(MessageType messageType) =>
      set(keyMessageType, messageType.name);

  DateTime get sentDate => get(keySentDate) as DateTime;
  set sentDate(DateTime sentDate) => set(keySentDate, sentDate);

  User get sender => get(keySender) as User;
  set sender(User sender) => set(keySender, sender);

  User get receiver => get(keyReceiver) as User;
  set receiver(User receiver) => set(keyReceiver, receiver);

  Map<String, dynamic> get metaData => jsonDecode(get<String>(keyMetaData)!);
  set metaData(Map<String, dynamic> metaData) =>
      set(keyMetaData, jsonEncode(metaData));

  DateTime get messageCreationDateOnServer =>
      get(keyMessageCreatedAt) as DateTime;

  @override
  List<Object?> get props => [
        get(keyMessageId),
        textMessage,
        media,
        receivedMessageType,
        sentDate,
        sender,
        metaData,
        receiver
      ];
}
