import 'dart:async';

import 'package:doors/core/utils/global_functions/global_functions.dart';
import 'package:doors/core/widgets/loading_indicator.dart';
import 'package:doors/core/widgets/no_internet_connection.dart';
import 'package:doors/core/widgets/no_result_found.dart';
import 'package:doors/core/widgets/posts_sliver_list.dart';
import 'package:doors/features/manage_post/presentation/managers/manage_post_bloc/manage_post_bloc.dart';
import 'package:doors/features/recent_posts/presentation/managers/recent_job_posts_bloc/recent_job_posts_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class RecentJobPostsList extends StatefulWidget {
  const RecentJobPostsList({
    Key? key,
  }) : super(key: key);

  @override
  State<RecentJobPostsList> createState() => _RecentJobPostsListState();
}

class _RecentJobPostsListState extends State<RecentJobPostsList> {
  var _refreshIndicatorCompleter = Completer<void>();
  var _jobPostsCount = 0;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RecentJobPostsBloc>(
      create: (context) => GetIt.I.get(
        param1: context.read<ManagePostBloc>(),
      )..add(const RecentJobPostsLoaded()),
      child: Builder(
        builder: (context) {
          return BlocListener<RecentJobPostsBloc, RecentJobPostsState>(
            listener: (context, state) {
              if (state is RecentJobPostsLoadFailure) {
                if (!_refreshIndicatorCompleter.isCompleted) {
                  _refreshIndicatorCompleter.complete();
                }
                showErrorSnackBar(
                    context, state.error.getLocalMessageError(context));
              } else if (state is RecentJobPostsLoadSuccess) {
                if (!_refreshIndicatorCompleter.isCompleted) {
                  _refreshIndicatorCompleter.complete();
                }
              }
            },
            child: NotificationListener<ScrollNotification>(
              onNotification: (notification) => notificationListener(
                  notification: notification,
                  onNotify: () {
                    final _recentJobPostsBloc =
                        context.read<RecentJobPostsBloc>();
                    if (_recentJobPostsBloc.state
                            is RecentJobPostsLoadSuccess &&
                        canGetMorePosts(_jobPostsCount)) {
                      _recentJobPostsBloc.add(const RecentJobPostsLoaded());
                    }
                  }),
              child: RefreshIndicator(
                onRefresh: () {
                  _refreshIndicatorCompleter = Completer<void>();
                  context
                      .read<RecentJobPostsBloc>()
                      .add(const RecentJobPostsRefreshed());
                  return _refreshIndicatorCompleter.future;
                },
                child: CustomScrollView(
                  slivers: [
                    // do not remove the empty SliverToBoxAdapter will case view port error
                    // its looks like a bug in the frameWork
                    const SliverToBoxAdapter(),
                    BlocBuilder<RecentJobPostsBloc, RecentJobPostsState>(
                      buildWhen: (previous, current) =>
                          current is RecentJobPostsLoadSuccess,
                      builder: (context, state) {
                        if (state is RecentJobPostsInProgress) {
                          return const SliverToBoxAdapter();
                        }
                        final _recentPostsLoadSuccessState =
                            (state as RecentJobPostsLoadSuccess);

                        _jobPostsCount =
                            _recentPostsLoadSuccessState.recentJobPosts.length;
                        return PostsSliverList(
                          posts: _recentPostsLoadSuccessState.recentJobPosts,
                        );
                      },
                    ),
                    BlocBuilder<RecentJobPostsBloc, RecentJobPostsState>(
                      builder: (context, state) {
                        return SliverFillRemaining(
                          fillOverscroll: false,
                          hasScrollBody: false,
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 20),
                            child: state.when(
                              inProgress: () => const Padding(
                                padding: EdgeInsets.symmetric(vertical: 16.0),
                                child: Center(
                                  child: LoadingIndicator(),
                                ),
                              ),
                              loadSuccess: (jobPosts) => jobPosts.isEmpty
                                  ? const NoResultFound()
                                  : const SizedBox.shrink(),
                              loadFailure: (error, cachedJobPosts) {
                                if (cachedJobPosts.isEmpty) {
                                  return NoInternetConnection(
                                    onRetry: () {
                                      context
                                          .read<RecentJobPostsBloc>()
                                          .add(const RecentJobPostsLoaded());
                                    },
                                    fullScreen: true,
                                  );
                                } else {
                                  return NoInternetConnection(
                                    onRetry: () {
                                      context
                                          .read<RecentJobPostsBloc>()
                                          .add(const RecentJobPostsLoaded());
                                    },
                                  );
                                }
                              },
                            ),
                          ),
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
