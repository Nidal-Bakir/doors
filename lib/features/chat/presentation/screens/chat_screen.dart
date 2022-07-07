import 'dart:io';

import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/errors/server_error.dart';
import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/features/chat/data/chat_local_data_source/models/chat_user_info.dart';
import 'package:doors/features/chat/data/chat_local_data_source/models/local_chat_message.dart';
import 'package:doors/features/chat/data/chat_local_data_source/models/media_file.dart';
import 'package:doors/features/chat/data/chat_local_data_source/models/message_meta_data.dart';
import 'package:doors/features/chat/presentation/managers/download_received_media_message_bloc/download_received_media_message_bloc.dart';
import 'package:doors/features/chat/presentation/widgets/chat_image_widget.dart';
import 'package:doors/features/chat/presentation/widgets/connection_status_widget.dart';
import 'package:doors/features/chat/presentation/widgets/message_error_icon_widget.dart';
import 'package:doors/features/chat/presentation/widgets/message_send_time_widget.dart';
import 'package:doors/features/chat/presentation/widgets/messing_send_in_progress_icon_widget.dart';
import 'package:doors/features/chat/presentation/widgets/scroll_to_latest_message_fab.dart';
import 'package:doors/features/chat/util/util_func_for_chat.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class ChatScreen extends StatefulWidget {
  static const routeName = '/chat';
  final ChatUserInfo chatUserInfo;
  const ChatScreen({Key? key, required this.chatUserInfo}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final _chatAnimatedListKey = GlobalKey<AnimatedListState>();
  final _chatScrollController = ScrollController();

  @override
  void dispose() {
    _chatScrollController.dispose();
    super.dispose();
  }

  final list = [
    LocalChatMessage.receivedMessage(
        isRead: true,
        mediaFile: MediaFile(file: null, mediaUrl: null),
        messageServerCreationDate: DateTime.now(),
        messageMetaData: ImageMessageMetaData(
            imageHight: 1080, imageSize: 500, imageWidth: 720),
        messageType: MessageType.image.name,
        remoteMessageId: '123',
        senderId: '1230',
        sentDate: DateTime.now(),
        textMessage: null),
    LocalChatMessage.receivedMessage(
      isRead: true,
      messageMetaData: ImageMessageMetaData(
          imageHight: 1080, imageSize: 500, imageWidth: 720),
      mediaFile: MediaFile(file: null, mediaUrl: null),
      messageServerCreationDate: DateTime.now(),
      messageType: MessageType.image.name,
      remoteMessageId: '123',
      senderId: '1230',
      sentDate: DateTime.now(),
      textMessage: null,
    ),
    LocalChatMessage.receivedMessage(
      isRead: true,
      messageMetaData: ImageMessageMetaData(
          imageHight: 1080, imageSize: 500, imageWidth: 720),
      mediaFile: MediaFile(file: null, mediaUrl: null),
      messageServerCreationDate: DateTime.now(),
      messageType: MessageType.image.name,
      remoteMessageId: '123',
      senderId: '1230',
      sentDate: DateTime.now(),
      textMessage: null,
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ScrollToLatestMessageFAB(
        chatScrollController: _chatScrollController,
      ),
      appBar: AppBar(
        title: ElevatedButton(
          child: Text(''),
          onPressed: () async {
            list.add(LocalChatMessage.receivedMessage(
              isRead: true,
              mediaFile: null,
              messageMetaData: ImageMessageMetaData(
                imageHight: 1080,
                imageSize: 500,
                imageWidth: 720,
              ),
              messageServerCreationDate: DateTime.now(),
              messageType: MessageType.text.name,
              remoteMessageId: '123',
              senderId: '1230',
              sentDate: DateTime.now(),
              textMessage: 'hi',
            ));
            _chatAnimatedListKey.currentState?.insertItem(
              list.length - 1,
              duration: const Duration(milliseconds: 200),
            );
            await _animateChatListToLatestMessage();
          },
        ),
      ),
      body: Column(
        children: [
          const ConnectionStatusWidget(),
          Expanded(
            child: AnimatedList(
              controller: _chatScrollController,
              key: _chatAnimatedListKey,
              initialItemCount: list.length,
              itemBuilder: (context, index, animation) {
                final _slideTransitionAnimation = Tween<Offset>(
                  begin: const Offset(0, 1),
                  end: Offset.zero,
                ).animate(animation);

                return SlideTransition(
                  position: _slideTransitionAnimation,
                  child: FadeTransition(
                    opacity: animation,
                    key: Key(list[index].localMessageId.toString()),
                    // child: _ReceivedImageMessageBuilderWidget(
                      // message: list[index],
                    // ),
                  ),
                );
              },
            ),
          ),
          Container(height: 50, color: Colors.red)
        ],
      ),
    );
  }

  Future<void> _animateChatListToLatestMessage() async {
    await Future.delayed(const Duration(milliseconds: 50));
    if (_chatScrollController.position.pixels >=
        _chatScrollController.position.maxScrollExtent - 200) {
      _chatScrollController.animateTo(
        _chatScrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 100),
        curve: Curves.linear,
      );
    }
  }
}

