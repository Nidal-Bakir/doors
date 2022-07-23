import 'dart:async';

import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/features/auth/presentation/managers/auth_bloc/auth_bloc.dart';
import 'package:doors/core/utils/global_functions/global_functions.dart';
import 'package:doors/core/widgets/loading_indicator.dart';
import 'package:doors/core/widgets/no_internet_connection.dart';
import 'package:doors/core/widgets/no_result_found.dart';
import 'package:doors/core/widgets/posts_sliver_list.dart';
import 'package:doors/features/manage_post/presentation/managers/manage_post_bloc/manage_post_bloc.dart';
import 'package:doors/features/recent_posts/presentation/managers/recent_service_posts_bloc/recent_service_posts_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class RecentServicePostsList extends StatefulWidget {
  final ServiceType serviceType;

  const RecentServicePostsList({
    Key? key,
    required this.serviceType,
  }) : super(key: key);

  @override
  State<RecentServicePostsList> createState() => _RecentServicePostsListState();
}

class _RecentServicePostsListState extends State<RecentServicePostsList> {
  var _refreshIndicatorCompleter = Completer<void>();
  var _servicePostsCount = 0;

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RecentServicePostsBloc>(
      create: (context) => GetIt.I.get(
        param1: widget.serviceType,
        param2: context.read<ManagePostBloc>(),
      )..add(const RecentServicePostsLoaded()),
      child: Builder(
        builder: (context) {
          return BlocListener<RecentServicePostsBloc, RecentServicePostsState>(
            listener: (context, state) {
              if (state is RecentServicePostsLoadFailure) {
                if (!_refreshIndicatorCompleter.isCompleted) {
                  _refreshIndicatorCompleter.complete();
                }
                showErrorSnackBar(
                    context, state.error.getLocalMessageError(context));
              }
            },
            child: NotificationListener<ScrollNotification>(
              onNotification: (notification) => notificationListener(
                  notification: notification,
                  onNotify: () {
                    final _recentServicePostsBloc =
                        context.read<RecentServicePostsBloc>();
                    if (_recentServicePostsBloc.state
                            is RecentServicePostsLoadSuccess &&
                        canLoadMoreData(_servicePostsCount)) {
                      _recentServicePostsBloc
                          .add(const RecentServicePostsLoaded());
                    }
                  }),
              child: RefreshIndicator(
                onRefresh: () {
                  context.read<AuthBloc>().add(
                        const AuthGetUpdatedUserDataRequested(),
                      );

                  _refreshIndicatorCompleter = Completer<void>();
                  context
                      .read<RecentServicePostsBloc>()
                      .add(const RecentServicePostsRefreshed());
                  return _refreshIndicatorCompleter.future;
                },
                child: CustomScrollView(
                  slivers: [
                    // do not remove the empty SliverToBoxAdapter will case view port error
                    // its looks like a bug in the frameWork
                    const SliverToBoxAdapter(),
                    BlocBuilder<RecentServicePostsBloc,
                        RecentServicePostsState>(
                      buildWhen: (previous, current) =>
                          current is RecentServicePostsLoadSuccess,
                      builder: (context, state) {
                        if (state is RecentServicePostsInProgress) {
                          return const SliverToBoxAdapter();
                        }
                        final _recentServicePostsLoadSuccessState =
                            (state as RecentServicePostsLoadSuccess);

                        if (!_refreshIndicatorCompleter.isCompleted) {
                          _refreshIndicatorCompleter.complete();
                        }
                        _servicePostsCount = _recentServicePostsLoadSuccessState
                            .recentServicePosts.length;
                        return PostsSliverList(
                          posts: _recentServicePostsLoadSuccessState
                              .recentServicePosts,
                        );
                      },
                    ),
                    BlocBuilder<RecentServicePostsBloc,
                        RecentServicePostsState>(
                      builder: (context, state) {
                        return SliverFillRemaining(
                          fillOverscroll: false,
                          hasScrollBody: false,
                          child: Padding(
                            padding:
                                const EdgeInsetsDirectional.only(bottom: 20),
                            child: state.when(
                              inProgress: () => const Padding(
                                padding: EdgeInsets.symmetric(vertical: 16.0),
                                child: Center(
                                  child: LoadingIndicator(),
                                ),
                              ),
                              loadSuccess: (posts) => posts.isEmpty
                                  ? const NoResultFound()
                                  : const SizedBox.shrink(),
                              loadFailure: (error, cachedPosts) {
                                if (cachedPosts.isEmpty) {
                                  return NoInternetConnection(
                                    onRetry: () {
                                      context
                                          .read<RecentServicePostsBloc>()
                                          .add(
                                              const RecentServicePostsLoaded());
                                    },
                                    fullScreen: true,
                                  );
                                } else {
                                  return NoInternetConnection(
                                    onRetry: () {
                                      context
                                          .read<RecentServicePostsBloc>()
                                          .add(
                                              const RecentServicePostsLoaded());
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
