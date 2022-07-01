import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/features/chat/data/chat_local_data_source/models/chat_user_info.dart';
import 'package:doors/features/chat/presentation/managers/chat_users_bloc/chat_users_bloc.dart';
import 'package:doors/features/chat/presentation/managers/messaging_bloc/messaging_bloc.dart';
import 'package:doors/features/chat/presentation/widgets/chat_user_item_widget.dart';
import 'package:doors/features/chat/presentation/widgets/connection_status_widget.dart';
import 'package:doors/features/chat/presentation/widgets/no_chat_to_show.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class ChatUsersScreen extends StatefulWidget {
  static const routeName = '/chat-users';
  const ChatUsersScreen({Key? key}) : super(key: key);

  @override
  State<ChatUsersScreen> createState() => _ChatUsersScreenState();
}

class _ChatUsersScreenState extends State<ChatUsersScreen> {
  final _chatUsersAnimatedListKey = GlobalKey<AnimatedListState>();

  var _chatUsers = <ChatUserInfo>[];

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          context.loc.chat,
          style: _theme.textTheme.headline5,
        ),
      ),
      body: Column(
        children: [
          const ConnectionStatusWidget(),
          Expanded(
            child: BlocProvider<ChatUsersBloc>(
              create: (context) => GetIt.I.get<ChatUsersBloc>(
                param1: context.read<MessagingBloc>(),
              )..add(const ChatUsersLoaded()),
              child: Builder(builder: (context) {
                return BlocConsumer<ChatUsersBloc, ChatUsersState>(
                  listenWhen: (previous, current) => current.maybeWhen<bool>(
                    orderUpdateSuccess: (_, __) => true,
                    newChatUserAddedSuccess: (_) => true,
                    orElse: () => false,
                  ),
                  listener: (context, state) {
                    state.whenOrNull(
                      orderUpdateSuccess: _onChatUserOrderUpdate,
                      newChatUserAddedSuccess: _onNewChatUserAdded,
                    );
                  },
                  buildWhen: (previous, current) => current.maybeWhen<bool>(
                    inProgress: () => true,
                    loadSuccess: (_) => true,
                    orElse: () => false,
                  ),
                  builder: (context, state) {
                    return state.maybeWhen(
                      loadSuccess: (loadedChatUsers) {
                        _chatUsers = loadedChatUsers.toList();
                        if (_chatUsers.isEmpty) {
                          return const NoChatToShow();
                        }
                        return AnimatedList(
                          key: _chatUsersAnimatedListKey,
                          initialItemCount: _chatUsers.length,
                          itemBuilder: (context, index, animation) {
                            final _slideTransitionAnimation = Tween<Offset>(
                              begin: const Offset(0, 1),
                              end: Offset.zero,
                            ).animate(animation);

                            return SlideTransition(
                              position: _slideTransitionAnimation,
                              child: FadeTransition(
                                opacity: animation,
                                key: _generateUserChatItemWidgetKey(
                                    _chatUsers[index]),
                                child: ChatUserItemWidget(
                                  chatUserInfo: _chatUsers[index],
                                ),
                              ),
                            );
                          },
                        );
                      },
                      orElse: () => Container(),
                    );
                  },
                );
              }),
            ),
          ),
        ],
      ),
    );
  }

  void _onNewChatUserAdded(ChatUserInfo newChatUser) {
    _chatUsers.insert(0, newChatUser);
    _chatUsersAnimatedListKey.currentState?.insertItem(0);
  }

  void _onChatUserOrderUpdate(int oldChatUserIndex, ChatUserInfo chatUser) {
    if (oldChatUserIndex == 0) {
      setState(() {
        _chatUsers[0] = chatUser;
      });
    } else {
      _chatUsers.removeAt(oldChatUserIndex);
      _chatUsers.insert(0, chatUser);

      _chatUsersAnimatedListKey.currentState?.removeItem(
        oldChatUserIndex,
        (_, __) {
          return const SizedBox.shrink();
        },
        duration: const Duration(milliseconds: 50),
      );

      _chatUsersAnimatedListKey.currentState?.insertItem(
        0,
        duration: const Duration(milliseconds: 300),
      );
    }
  }

  Key _generateUserChatItemWidgetKey(ChatUserInfo chatUser) {
    return Key(
      '${chatUser.latestMessage?.localMessageId}${chatUser.unReadCount}',
    );
  }
}
