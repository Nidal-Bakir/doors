import 'package:doors/app/app_observers.dart';
import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/widgets/circular_profile_image.dart';
import 'package:doors/features/chat/data/chat_local_data_source/models/chat_user_info.dart';
import 'package:doors/features/chat/presentation/managers/chat_bloc/chat_bloc.dart';
import 'package:doors/features/chat/presentation/managers/messaging_bloc/messaging_bloc.dart';
import 'package:doors/features/chat/presentation/screens/chat_users_screen.dart';
import 'package:doors/features/chat/presentation/widgets/chat_messages_list_widget.dart';
import 'package:doors/features/chat/presentation/widgets/connection_status_widget.dart';
import 'package:doors/features/chat/presentation/widgets/message_composer_bar.dart';
import 'package:doors/features/chat/presentation/widgets/scroll_to_latest_message_fab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class ChatScreen extends StatefulWidget {
  static const routeName = '/chat';
  final ChatUserInfo chatUser;
  const ChatScreen({Key? key, required this.chatUser}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  late final _chatScrollController = ScrollController();

  @override
  void dispose() {
    _chatScrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);
    return WillPopScope(
      onWillPop: () async {
        final history = NavigationHistoryObserver().history;

        try {
          if (history[history.length - 2].settings.name !=
              ChatUsersScreen.routeName) {
            Navigator.of(context)
                .pushReplacementNamed(ChatUsersScreen.routeName);
            return false;
          }
        } catch (error) {
          return true;
        }

        return true;
      },
      child: BlocProvider<ChatBloc>(
        create: (context) => GetIt.I.get<ChatBloc>(
          param1: context.read<MessagingBloc>(),
          param2: widget.chatUser.userId,
        )..add(
            const ChatMessagesLoaded(),
          ),
        child: Builder(
          builder: (context) {
            return Scaffold(
              floatingActionButton: ScrollToLatestMessageFAB(
                chatScrollController: _chatScrollController,
              ),
              appBar: AppBar(
                centerTitle: false,
                titleSpacing: 0,
                title: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Hero(
                      tag: widget.chatUser.userId,
                      child: CircularProfileImage(
                        url: widget.chatUser.profileImage?.mediaUrl,
                        fileImage: widget.chatUser.profileImage?.file,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Text(
                      widget.chatUser.name,
                      style: _theme.textTheme.subtitle2,
                    ),
                  ],
                ),
                actions: [
                  PopupMenuButton<int>(
                    itemBuilder: (context) {
                      return [
                        PopupMenuItem<int>(
                          value: 0,
                          child: Row(
                            children: [
                              const Icon(
                                Icons.person_off_outlined,
                                size: 25,
                              ),
                              const SizedBox(width: 4),
                              Text(
                                context.loc.block,
                                style: _theme.textTheme.subtitle1,
                              ),
                            ],
                          ),
                        ),
                      ];
                    },
                  ),
                ],
              ),
              body: Column(
                children: [
                  const ConnectionStatusWidget(),
                  Expanded(
                    child: ChatMessagesListWidget(
                      chatScrollController: _chatScrollController,
                    ),
                  ),
                  MessageComposerBar(chatUser: widget.chatUser),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
