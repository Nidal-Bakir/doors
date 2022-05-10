import 'dart:async';

import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/features/user_posts/presentation/managers/user_posts_bloc/user_posts_bloc.dart';
import 'package:doors/core/features/user_posts/presentation/widgets/user_posts_error_handler_sliver_fill_remaining.dart';
import 'package:doors/core/features/user_posts/presentation/widgets/user_posts_sliver_result_list.dart';
import 'package:doors/core/utils/global_functions/global_functions.dart';
import 'package:doors/core/widgets/primary_color_background_for_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class UserPostsScreen extends StatefulWidget {
  final String userId;
  static const routeName = '/user-posts';
  const UserPostsScreen({Key? key, required this.userId}) : super(key: key);

  @override
  State<UserPostsScreen> createState() => _UserPostsScreenState();
}

class _UserPostsScreenState extends State<UserPostsScreen> {
  var _refreshIndicatorCompleter = Completer<void>();
  var _userPostsCount = 0;

  @override
  Widget build(BuildContext context) {
    return PrimaryColorBackgroundForScaffold(
      scaffoldWidget: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
            title: Text(
          context.loc.my_service,
          style: Theme.of(context).textTheme.headline6,
        )),
        body: BlocProvider<UserPostsBloc>(
          create: (context) =>
              GetIt.I.get<UserPostsBloc>()..add(UserPostsLoaded(widget.userId)),
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
                          _recentPostsBloc.add(UserPostsLoaded(widget.userId));
                        }
                      }),
                  child: RefreshIndicator(
                    onRefresh: () {
                      _refreshIndicatorCompleter = Completer<void>();
                      context
                          .read<UserPostsBloc>()
                          .add(UserPostsRefreshed(widget.userId));

                      return _refreshIndicatorCompleter.future;
                    },
                    child: CustomScrollView(
                      slivers: [
                        // do not remove the empty SliverToBoxAdapter will case view port error
                        // its looks like a bug in the frameWork
                        const SliverToBoxAdapter(),
                        const UserPostsSliverResultList(),
                        UserPostsErrorHandlerSliverFillRemaining(
                          userId: widget.userId,
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
