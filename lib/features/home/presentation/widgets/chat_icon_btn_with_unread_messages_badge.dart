import 'package:doors/core/features/auth/presentation/managers/auth_bloc/auth_bloc.dart';
import 'package:doors/core/features/auth/presentation/screens/login_screen.dart';
import 'package:doors/core/models/user.dart';
import 'package:doors/features/chat/data/chat_local_data_source/models/chat_user_info.dart';
import 'package:doors/features/chat/presentation/managers/unread_messages_counter_bloc/unread_messages_counter_bloc.dart';
import 'package:doors/features/chat/presentation/screens/chat_screen.dart';
import 'package:doors/features/chat/presentation/screens/chat_users_screen.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class ChatIconBtnWithUnreadMessagesBadge extends StatefulWidget {
  const ChatIconBtnWithUnreadMessagesBadge({Key? key}) : super(key: key);

  @override
  State<ChatIconBtnWithUnreadMessagesBadge> createState() =>
      _ChatIconBtnWithUnreadMessagesBadgeState();
}

class _ChatIconBtnWithUnreadMessagesBadgeState
    extends State<ChatIconBtnWithUnreadMessagesBadge> {
  User? _currentUser;
  @override
  void initState() {
    _currentUser = context.read<AuthBloc>().getCurrentUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (_currentUser == null || (_currentUser?.isAnonymousAccount ?? true)) {
      return IconButton(
        onPressed: () {
          Navigator.of(context).pushNamed(LogInScreen.routeName);
        },
        icon: const ImageIcon(
          AssetImage(
            'assets/icons/message.png',
          ),
        ),
      );
    }

    return BlocProvider<UnreadMessagesCounterBloc>(
      create: (_) => GetIt.I.get<UnreadMessagesCounterBloc>(),
      child: Builder(builder: (context) {
        return BlocBuilder<UnreadMessagesCounterBloc,
            UnreadMessagesCounterState>(
          builder: (context, state) {
            return state.when(changeSuccess: (unreadMessagesCount) {
              return Material(
                color: Colors.transparent,
                child: Padding(
                  padding: const EdgeInsetsDirectional.only(end: 5),
                  child: Badge(
                    padding: unreadMessagesCount >= 10
                        ? const EdgeInsets.all(3.0)
                        : const EdgeInsets.all(5.0),
                    animationType: BadgeAnimationType.slide,
                    position: BadgePosition.topEnd(end: 0, top: 2),
                    animationDuration: const Duration(milliseconds: 300),
                    showBadge: unreadMessagesCount != 0,
                    badgeContent: Text(
                      (unreadMessagesCount > 99 ? 99 : unreadMessagesCount)
                          .toString(),
                    ),
                    child: IconButton(
                      onPressed: () {
                        // Navigator.of(context)
                        //     .pushNamed(ChatUsersScreen.routeName);
                        const chatUser = ChatUserInfo(
                          name: 'nidal bakir',
                          profileImage: null,
                          userId: '123',
                        );
                        Navigator.of(context).pushNamed(
                          ChatScreen.routeName,
                          arguments: chatUser,
                        );
                      },
                      icon: const ImageIcon(
                        AssetImage(
                          'assets/icons/message.png',
                        ),
                      ),
                    ),
                  ),
                ),
              );
            });
          },
        );
      }),
    );
  }
}
