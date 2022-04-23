import 'dart:async';

import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/features/post/presentation/screen/post_screen.dart';
import 'package:doors/core/features/post/presentation/widgets/post_card_item.dart';
import 'package:doors/core/utils/global_functions/global_functions.dart';
import 'package:doors/core/widgets/loading_indicator.dart';
import 'package:doors/core/widgets/no_internet_connection.dart';
import 'package:doors/core/widgets/no_result_found.dart';
import 'package:doors/features/recent_posts/presentation/managers/recent_posts_bloc/recent_posts_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class RecentPostsList extends StatefulWidget {
  final PostType postType;

  const RecentPostsList({Key? key, required this.postType}) : super(key: key);

  @override
  State<RecentPostsList> createState() => _RecentPostsListState();
}

class _RecentPostsListState extends State<RecentPostsList> {
  var _refreshIndicatorCompleter = Completer<void>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RecentPostsBloc>(
      create: (context) =>
          GetIt.I.get(param1: widget.postType)..add(const RecentPostsLoaded()),
      child: Builder(
        builder: (context) {
          return BlocListener<RecentPostsBloc, RecentPostsState>(
            listener: (context, state) {
              if (state is RecentPostsLoadFailure) {
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
                    final _recentPostsBloc = context.read<RecentPostsBloc>();
                    if (_recentPostsBloc.state is RecentPostsLoadSuccess) {
                      _recentPostsBloc.add(const RecentPostsLoaded());
                    }
                  }),
              child: RefreshIndicator(
                onRefresh: () {
                  _refreshIndicatorCompleter = Completer<void>();
                  context
                      .read<RecentPostsBloc>()
                      .add(const RecentPostsRefreshed());
                  return _refreshIndicatorCompleter.future;
                },
                child: CustomScrollView(
                  slivers: [
                    // do not remove the empty SliverToBoxAdapter will case view port error
                    // its looks like a bug in the frameWork
                    const SliverToBoxAdapter(),
                    BlocBuilder<RecentPostsBloc, RecentPostsState>(
                      buildWhen: (previous, current) =>
                          current is RecentPostsLoadSuccess,
                      builder: (context, state) {
                        if (state is RecentPostsInProgress) {
                          return const SliverToBoxAdapter();
                        }
                        final _recentPostsLoadSuccessState =
                            (state as RecentPostsLoadSuccess);

                        if (!_refreshIndicatorCompleter.isCompleted) {
                          _refreshIndicatorCompleter.complete();
                        }

                        return SliverList(
                          delegate: SliverChildBuilderDelegate(
                            (context, index) {
                              final _post = _recentPostsLoadSuccessState
                                  .recentPosts[index];
                              return PostCardItem(
                                onTap: () {
                                  Navigator.of(context).pushNamed(
                                    PostScreen.routeName,
                                    arguments: _post,
                                  );
                                },
                                author: _post.author,
                                maxCost: _post.maxCost,
                                minCost: _post.maxCost,
                                postCostCurrency: _post.postCostCurrency,
                                postDescription: _post.postDescription,
                                postHumanReadableLocation:
                                    _post.postHumanReadableLocation,
                                postImage: _post.postImage,
                                postKeywords: _post.postKeywords,
                                postLocation: _post.postLocation,
                                postTitle: _post.postTitle,
                              );
                            },
                            childCount:
                                _recentPostsLoadSuccessState.recentPosts.length,
                          ),
                          // itemExtent: 270,
                        );
                      },
                    ),
                    BlocBuilder<RecentPostsBloc, RecentPostsState>(
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
                              loadSuccess: (posts) => posts.isEmpty
                                  ? const NoResultFound()
                                  : const SizedBox.shrink(),
                              loadFailure: (error, cachedPosts) {
                                if (cachedPosts.isEmpty) {
                                  return NoInternetConnection(
                                    onRetry: () {
                                      context
                                          .read<RecentPostsBloc>()
                                          .add(const RecentPostsLoaded());
                                    },
                                    fullScreen: true,
                                  );
                                } else {
                                  return NoInternetConnection(
                                    onRetry: () {
                                      context
                                          .read<RecentPostsBloc>()
                                          .add(const RecentPostsLoaded());
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
