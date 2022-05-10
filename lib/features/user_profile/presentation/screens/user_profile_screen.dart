import 'dart:async';
import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/features/auth/model/user.dart';
import 'package:doors/core/features/auth/presentation/managers/auth_bloc/auth_bloc.dart';
import 'package:doors/core/features/user_posts/presentation/managers/user_posts_bloc/user_posts_bloc.dart';
import 'package:doors/core/features/user_posts/presentation/widgets/user_posts_error_handler_sliver_fill_remaining.dart';
import 'package:doors/core/features/user_posts/presentation/widgets/user_posts_sliver_result_list.dart';
import 'package:doors/core/utils/global_functions/global_functions.dart';
import 'package:doors/core/widgets/line_with_text_on_row.dart';
import 'package:doors/features/user_profile/presentation/widgets/user_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class UserProfileScreen extends StatefulWidget {
  static const routeName = '/user-profile';
  final User visitedUser;
  const UserProfileScreen({
    Key? key,
    required this.visitedUser,
  }) : super(key: key);

  @override
  State<UserProfileScreen> createState() => _UserProfileScreenState();
}

class _UserProfileScreenState extends State<UserProfileScreen> {
  var _refreshIndicatorCompleter = Completer<void>();
  final _refreshIndicatorKey = GlobalKey<RefreshIndicatorState>();
  var _userPostsCount = 0;
  late User _currentUser;
  late User _visitedUser;
  @override
  void initState() {
    _currentUser = context.read<AuthBloc>().getCurrentUser()!;
    _visitedUser = widget.visitedUser;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<UserPostsBloc>(
        create: (context) => GetIt.I.get<UserPostsBloc>()
          ..add(UserPostsLoaded(_visitedUser.userId)),
        child: Builder(
          builder: (context) {
            return BlocListener<UserPostsBloc, UserPostsState>(
              listener: (context, state) {
                if (state is UserPostsLoadFailure) {
                  if (!_refreshIndicatorCompleter.isCompleted) {
                    _refreshIndicatorCompleter.complete();
                  }
                  showErrorSnackBar(
                      context, state.error.getLocalMessageError(context));
                } else if (state is UserPostsLoadSuccess) {
                  _userPostsCount = state.userPosts.length;
                  if (!_refreshIndicatorCompleter.isCompleted) {
                    _refreshIndicatorCompleter.complete();
                  }
                }
              },
              child: NotificationListener<ScrollNotification>(
                onNotification: (notification) => notificationListener(
                    notification: notification,
                    onNotify: () {
                      final _recentPostsBloc = context.read<UserPostsBloc>();
                      if (_recentPostsBloc.state is UserPostsLoadSuccess &&
                          canGetMorePosts(_userPostsCount)) {
                        _recentPostsBloc
                            .add(UserPostsLoaded(_visitedUser.userId));
                      }
                    }),
                child: RefreshIndicator(
                  key: _refreshIndicatorKey,
                  onRefresh: () {
                    _refreshIndicatorCompleter = Completer<void>();
                    if (_isTheCurrentUserProfile) {
                      context
                          .read<AuthBloc>()
                          .add(const AuthGetUpdatedUserDataRequested());
                    } else {
                      context
                          .read<UserPostsBloc>()
                          .add(UserPostsRefreshed(_visitedUser.userId));
                    }

                    return _refreshIndicatorCompleter.future;
                  },
                  child: CustomScrollView(
                    slivers: [
                      const SliverAppBar(),
                      BlocConsumer<AuthBloc, AuthState>(
                          listenWhen: (previous, current) =>
                              _isTheCurrentUserProfile &&
                              (current is AuthCurrentUpdatedUserLoadSuccess ||
                                  current is AuthLoadFailure ||
                                  current is AuthInProgress),
                          listener: (context, state) {
                            if (state is AuthInProgress) {
                              _refreshIndicatorKey.currentState?.show();
                              return;
                            }
                            if (state is AuthLoadFailure) {
                              showErrorSnackBar(
                                  context,
                                  state.exception
                                      .getLocalMessageError(context));
                            }
                            if (!_refreshIndicatorCompleter.isCompleted) {
                              _refreshIndicatorCompleter.complete();
                            }
                          },
                          buildWhen: (previous, current) =>
                              _isTheCurrentUserProfile &&
                              current is AuthCurrentUpdatedUserLoadSuccess,
                          builder: (context, state) {
                            if (state is AuthCurrentUpdatedUserLoadSuccess) {
                              _currentUser = state.user;
                              if (_isTheCurrentUserProfile) {
                                _visitedUser = _currentUser;
                              }
                            }

                            return SliverToBoxAdapter(
                              child: UserInfo(
                                visitedUser: _visitedUser,
                                currentUser: _currentUser,
                              ),
                            );
                          }),
                      SliverToBoxAdapter(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 8,
                            horizontal: 16,
                          ),
                          child: LineWithTextOnRow(
                            text: _currentUser.userId == _visitedUser.userId
                                ? context.loc.my_service
                                : context.loc.user_services,
                          ),
                        ),
                      ),
                      const UserPostsSliverResultList(),
                      UserPostsErrorHandlerSliverFillRemaining(
                        userId: _visitedUser.userId,
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  bool get _isTheCurrentUserProfile =>
      _currentUser.userId == _visitedUser.userId;
}
