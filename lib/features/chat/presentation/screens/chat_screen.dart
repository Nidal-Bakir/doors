import 'package:doors/app/app_observers.dart';
import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/features/auth/presentation/managers/auth_bloc/auth_bloc.dart';
import 'package:doors/core/models/user.dart';
import 'package:doors/core/widgets/circular_profile_image.dart';
import 'package:doors/features/block/util/block_dialogs.dart';
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
  late User _currentUser;

  @override
  void initState() {
    super.initState();
    _currentUser = context.read<AuthBloc>().getCurrentUser()!;
  }

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
                  BlocBuilder<AuthBloc, AuthState>(
                    buildWhen: (previous, current) =>
                        current is AuthCurrentUpdatedUserLoadSuccess,
                    builder: (context, state) {
                      if (state is AuthCurrentUpdatedUserLoadSuccess) {
                        _currentUser = state.user;
                      }
                      return PopupMenuButton<int>(
                        onSelected: (value) async {
                          if (value == 0) {
                            if (_isBlocked()) {
                              await showUnblockDialog(
                                context,
                                widget.chatUser.userId,
                              );
                            } else {
                              await showBlockDialog(
                                context,
                                widget.chatUser.userId,
                              );
                            }
                          }
                        },
                        itemBuilder: (context) {
                          return [
                            PopupMenuItem<int>(
                              value: 0,
                              child: Row(
                                children: [
                                  Icon(
                                    _isBlocked()
                                        ? Icons.person_outline_rounded
                                        : Icons.person_off_outlined,
                                    size: 25,
                                  ),
                                  const SizedBox(width: 4),
                                  Text(
                                    _isBlocked()
                                        ? context.loc.unblock
                                        : context.loc.block,
                                    style: _theme.textTheme.subtitle1,
                                  ),
                                ],
                              ),
                            ),
                          ];
                        },
                      );
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
                  BlocBuilder<AuthBloc, AuthState>(
                    buildWhen: (previous, current) =>
                        current is AuthCurrentUpdatedUserLoadSuccess,
                    builder: (context, state) {
                      if (state is AuthCurrentUpdatedUserLoadSuccess) {
                        _currentUser = state.user;
                      }
                      return Column(
                        children: [
                          if (!_shouldHideMessageComposerBar())
                            MessageComposerBar(
                              chatUser: widget.chatUser,
                            ),
                          if (_shouldHideMessageComposerBar())
                            Container(
                              width: double.infinity,
                              padding: const EdgeInsets.all(16),
                              color: _theme.colorScheme.primary,
                              child: Text(
                                context.loc
                                    .you_can_not_send_or_receive_messages_from_this_chat,
                                style: _theme.textTheme.subtitle2,
                              ),
                            )
                        ],
                      );
                    },
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  bool _shouldHideMessageComposerBar() {
    return widget.chatUser.isCurrentUserBlockedByThisUser || _isBlocked();
  }

  bool _isBlocked() =>
      _currentUser.getListOfBlockedUsers().contains(widget.chatUser.userId);
}
