import 'dart:async';

import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/features/post/presentation/widgets/post_card_item.dart';
import 'package:doors/core/utils/global_functions/global_functions.dart';
import 'package:doors/core/widgets/loading_indicator.dart';
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
                            return PostCardItem(
                              post: _recentPostsLoadSuccessState
                                  .recentPosts[index],
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
                        child: state.when(
                          inProgress: () => const Padding(
                            padding: EdgeInsets.symmetric(vertical: 16.0),
                            child: Center(
                              child: LoadingIndicator(),
                            ),
                          ),
                          loadSuccess: (_) => const SizedBox.shrink(),
                          loadFailure: (error, cachedPosts) {
                            if (cachedPosts.isEmpty) {
                              return Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Image.asset(
                                      'assets/images/no-internet.png',
                                      width: 300,
                                    ),
                                    Text(
                                      context.loc
                                          .please_check_your_internet_connection,
                                      style:
                                          Theme.of(context).textTheme.headline6,
                                    ),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    ElevatedButton.icon(
                                      onPressed: () {
                                        context
                                            .read<RecentPostsBloc>()
                                            .add(const RecentPostsLoaded());
                                      },
                                      icon: const Icon(Icons.replay_rounded),
                                      label: Text(
                                        context.loc.retry,
                                      ),
                                    )
                                  ],
                                ),
                              );
                            } else {
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 16),
                                child: Column(
                                  children: [
                                    Text(
                                      context.loc
                                          .please_check_your_internet_connection,
                                      style:
                                          Theme.of(context).textTheme.headline6,
                                    ),
                                    ElevatedButton.icon(
                                      onPressed: () {
                                        context
                                            .read<RecentPostsBloc>()
                                            .add(const RecentPostsLoaded());
                                      },
                                      icon: const Icon(Icons.replay_rounded),
                                      label: Text(
                                        context.loc.retry,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            }
                          },
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
