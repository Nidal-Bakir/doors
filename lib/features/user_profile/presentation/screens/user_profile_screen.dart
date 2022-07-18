import 'dart:async';
import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/models/user.dart';
import 'package:doors/core/features/auth/presentation/managers/auth_bloc/auth_bloc.dart';
import 'package:doors/core/features/user_posts/presentation/managers/user_posts_bloc/user_posts_bloc.dart';
import 'package:doors/core/features/user_posts/presentation/widgets/user_posts_error_handler_sliver_fill_remaining.dart';
import 'package:doors/core/features/user_posts/presentation/widgets/user_posts_sliver_result_list.dart';
import 'package:doors/core/models/job_post.dart';
import 'package:doors/core/models/service_post.dart';
import 'package:doors/core/utils/global_functions/global_functions.dart';
import 'package:doors/features/block/util/block_dialogs.dart';
import 'package:doors/features/user_profile/presentation/widgets/current_post_view_with_view_filter.dart';
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

  var _isJobPostsHasFirstLoad = false;

  var _userPostsCount = 0;

  var _postsViewFilter = PostsViewFilter.services;

  late User _currentUser;
  late User _visitedUser;

  late UserPostsBloc _servicePostsBloc;
  late UserPostsBloc _jobPostsBloc;
  late UserPostsBloc _currentUsedBloc;

  UserPostsBloc _createServicePostsBloc() {
    _servicePostsBloc = GetIt.I.get<UserPostsBloc>(
      param1: ServicePost.keyClassName,
      param2: User.keyUserServicePosts,
    )..add(UserPostsLoaded(_visitedUser.userId));
    _currentUsedBloc = _servicePostsBloc;
    return _servicePostsBloc;
  }

  UserPostsBloc _createJobPostsBloc() {
    _jobPostsBloc = GetIt.I.get<UserPostsBloc>(
      param1: JobPost.keyClassName,
      param2: User.keyCompanyJobPosts,
    );
    return _jobPostsBloc;
  }

  @override
  void initState() {
    _currentUser = context.read<AuthBloc>().getCurrentUser()!;
    _visitedUser = widget.visitedUser;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _theme = Theme.of(context);

    return Scaffold(
      body: MultiBlocProvider(
        providers: [
          BlocProvider<UserPostsBloc>(
            lazy: false,
            create: (_) => _createServicePostsBloc(),
          ),
          if (_visitedUser.isCompanyAccount)
            BlocProvider<UserPostsBloc>(
              lazy: false,
              create: (_) => _createJobPostsBloc(),
            ),
        ],
        child: Builder(builder: (context) {
          return BlocProvider<UserPostsBloc>.value(
            key: Key(_postsViewFilter.name + ',provider'),
            value: _currentUsedBloc,
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
                          if (_currentUsedBloc.state is UserPostsLoadSuccess &&
                              canLoadMoreData(_userPostsCount)) {
                            _currentUsedBloc
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
                          _currentUsedBloc
                              .add(UserPostsRefreshed(_visitedUser.userId));
                        }

                        return _refreshIndicatorCompleter.future;
                      },
                      child: CustomScrollView(
                        slivers: [
                          SliverAppBar(
                            actions: _isTheCurrentUserProfile
                                ? null
                                : [
                                    BlocBuilder<AuthBloc, AuthState>(
                                      buildWhen: (previous, current) => current
                                          is AuthCurrentUpdatedUserLoadSuccess,
                                      builder: (context, state) {
                                        if (state
                                            is AuthCurrentUpdatedUserLoadSuccess) {
                                          _currentUser = state.user;
                                        }
                                        return PopupMenuButton<int>(
                                          onSelected: (value) async {
                                            if (value == 0) {
                                              if (_isBlocked()) {
                                                await showUnblockDialog(
                                                  context,
                                                  _visitedUser.userId,
                                                );
                                              } else {
                                                await showBlockDialog(
                                                  context,
                                                  _visitedUser.userId,
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
                                                          ? Icons
                                                              .person_outline_rounded
                                                          : Icons
                                                              .person_off_outlined,
                                                      size: 25,
                                                    ),
                                                    const SizedBox(width: 4),
                                                    Text(
                                                      _isBlocked()
                                                          ? context.loc.unblock
                                                          : context.loc.block,
                                                      style: _theme
                                                          .textTheme.subtitle1,
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
                          SliverToBoxAdapter(
                            child: BlocConsumer<AuthBloc, AuthState>(
                                listenWhen: (previous, current) =>
                                    _isTheCurrentUserProfile &&
                                    (current
                                            is AuthCurrentUpdatedUserLoadSuccess ||
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
                                    current
                                        is AuthCurrentUpdatedUserLoadSuccess,
                                builder: (context, state) {
                                  if (state
                                      is AuthCurrentUpdatedUserLoadSuccess) {
                                    _currentUser = state.user;
                                    if (_isTheCurrentUserProfile) {
                                      _visitedUser = _currentUser;
                                    }
                                  }

                                  return UserInfo(
                                    visitedUser: _visitedUser,
                                    currentUser: _currentUser,
                                  );
                                }),
                          ),
                          CurrentPostsViewLabelWithPostsViewFilter(
                            currentUserId: _currentUser.userId,
                            visitedUser: _visitedUser,
                            onViewChange: _onViewChange,
                            currentPostsViewFilter: _postsViewFilter,
                          ),
                          UserPostsSliverResultList(
                            key: Key(
                              _postsViewFilter.name + ',posts',
                            ),
                          ),
                          UserPostsErrorHandlerSliverFillRemaining(
                            key: Key(
                              _postsViewFilter.name + ',fill',
                            ),
                            userId: _visitedUser.userId,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        }),
      ),
    );
  }

  bool _isBlocked() =>
      _currentUser.getListOfBlockedUsers().contains(_visitedUser.userId);

  void _onViewChange(PostsViewFilter currentPostsView) {
    switch (currentPostsView) {
      case PostsViewFilter.services:
        if (_postsViewFilter != currentPostsView) {
          setState(() {
            _postsViewFilter = currentPostsView;
            _currentUsedBloc = _servicePostsBloc;
          });
        }
        break;
      case PostsViewFilter.jobs:
        if (_postsViewFilter != currentPostsView) {
          if (!_isJobPostsHasFirstLoad) {
            _jobPostsBloc.add(UserPostsLoaded(_visitedUser.userId));
          }
          setState(() {
            _isJobPostsHasFirstLoad = true;
            _postsViewFilter = currentPostsView;
            _currentUsedBloc = _jobPostsBloc;
          });
        }
        break;
    }
  }

  bool get _isTheCurrentUserProfile =>
      _currentUser.userId == _visitedUser.userId;
}
