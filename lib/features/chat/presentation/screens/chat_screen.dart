import 'package:doors/features/chat/data/chat_local_data_source/models/chat_user_info.dart';
import 'package:doors/features/chat/data/chat_local_data_source/models/local_chat_message.dart';
import 'package:doors/features/chat/presentation/widgets/connection_status_widget.dart';
import 'package:doors/features/chat/presentation/widgets/message_composer_bar.dart';
import 'package:doors/features/chat/presentation/widgets/message_widget/message_builder.dart';
import 'package:doors/features/chat/presentation/widgets/scroll_to_latest_message_fab.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  static const routeName = '/chat';
  final ChatUserInfo chatUser;
  const ChatScreen({Key? key, required this.chatUser}) : super(key: key);

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

  final _chatMessages = <LocalChatMessage>[];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: ScrollToLatestMessageFAB(
        chatScrollController: _chatScrollController,
      ),
      appBar: AppBar(),
      body: Column(
        children: [
          const ConnectionStatusWidget(),
          Expanded(
            child: AnimatedList(
              controller: _chatScrollController,
              key: _chatAnimatedListKey,
              initialItemCount: _chatMessages.length,
              itemBuilder: (context, index, animation) {
                final _slideTransitionAnimation = Tween<Offset>(
                  begin: const Offset(0, 1),
                  end: Offset.zero,
                ).animate(animation);

                return SlideTransition(
                  key: Key(_chatMessages[index].localMessageId.toString()),
                  position: _slideTransitionAnimation,
                  child: FadeTransition(
                    opacity: animation,
                    child: MessageBuilderWidget.buildMessage(
                      _chatMessages[index],
                    ),
                  ),
                );
              },
            ),
          ),
          MessageComposerBar(chatUser: widget.chatUser),
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
/**
 * 
 *  _chatAnimatedListKey.currentState?.insertItem(
              list.length - 1,
              duration: const Duration(milliseconds: 200),
            );
            await _animateChatListToLatestMessage();
 * 
 */
