import 'dart:async';

import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/features/post/presentation/screen/post_screen.dart';
import 'package:doors/core/features/post/presentation/widgets/post_card_item.dart';
import 'package:doors/core/utils/global_functions/global_functions.dart';
import 'package:doors/core/widgets/loading_indicator.dart';
import 'package:doors/core/widgets/no_internet_connection.dart';
import 'package:doors/core/widgets/no_result_found.dart';
import 'package:doors/core/widgets/primary_color_background_for_scaffold.dart';
import 'package:doors/features/favorite_posts/presentation/managers/favorite_posts_bloc.dart';
import 'package:doors/features/manage_post/presentation/managers/manage_post_bloc/manage_post_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class FavoritePostsScreen extends StatefulWidget {
  static const routeName = '/favorite-posts';
  const FavoritePostsScreen({Key? key}) : super(key: key);

  @override
  State<FavoritePostsScreen> createState() => _FavoritePostsScreenState();
}

class _FavoritePostsScreenState extends State<FavoritePostsScreen> {
  var _refreshIndicatorCompleter = Completer<void>();
  var _favoritePostsCount = 0;

  @override
  Widget build(BuildContext context) {
    return PrimaryColorBackgroundForScaffold(
      scaffoldWidget: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
            title: Text(
          context.loc.favorite_posts,
          style: Theme.of(context).textTheme.headline6,
        )),
        body: BlocProvider<FavoritePostsBloc>(
          create: (context) => GetIt.I.get<FavoritePostsBloc>(
            param1: context.read<ManagePostBloc>(),
          )..add(const FavoritePostsLoaded()),
          child: Builder(
            builder: (context) {
              return BlocListener<FavoritePostsBloc, FavoritePostsState>(
                listener: (context, state) {
                  if (state is FavoritePostsLoadFailure) {
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
                        final _recentPostsBloc =
                            context.read<FavoritePostsBloc>();
                        if (_recentPostsBloc.state
                                is FavoritePostsLoadSuccess &&
                            canGetMorePosts(_favoritePostsCount)) {
                          _recentPostsBloc.add(const FavoritePostsLoaded());
                        }
                      }),
                  child: RefreshIndicator(
                    onRefresh: () {
                      _refreshIndicatorCompleter = Completer<void>();
                      context
                          .read<FavoritePostsBloc>()
                          .add(const FavoritePostsRefreshed());

                      return _refreshIndicatorCompleter.future;
                    },
                    child: CustomScrollView(
                      slivers: [
                        // do not remove the empty SliverToBoxAdapter will case view port error
                        // its looks like a bug in the frameWork
                        const SliverToBoxAdapter(),
                        BlocBuilder<FavoritePostsBloc, FavoritePostsState>(
                          buildWhen: (previous, current) =>
                              current is FavoritePostsLoadSuccess,
                          builder: (context, state) {
                            if (state is FavoritePostsInProgress) {
                              return const SliverToBoxAdapter();
                            }
                            final _favoritePostsLoadSuccessState =
                                (state as FavoritePostsLoadSuccess);

                            if (!_refreshIndicatorCompleter.isCompleted) {
                              _refreshIndicatorCompleter.complete();
                            }

                            return SliverList(
                              delegate: SliverChildBuilderDelegate(
                                (context, index) {
                                  _favoritePostsCount =
                                      _favoritePostsLoadSuccessState
                                          .favoritePosts.length;

                                  final _post = _favoritePostsLoadSuccessState
                                      .favoritePosts[index];
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
                                childCount: _favoritePostsLoadSuccessState
                                    .favoritePosts.length,
                              ),
                              // itemExtent: 270,
                            );
                          },
                        ),
                        BlocBuilder<FavoritePostsBloc, FavoritePostsState>(
                          builder: (context, state) {
                            return SliverFillRemaining(
                              fillOverscroll: false,
                              hasScrollBody: false,
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 20),
                                child: state.when(
                                  inProgress: () => const Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 16.0),
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
                                              .read<FavoritePostsBloc>()
                                              .add(const FavoritePostsLoaded());
                                        },
                                        fullScreen: true,
                                      );
                                    } else {
                                      return NoInternetConnection(
                                        onRetry: () {
                                          context
                                              .read<FavoritePostsBloc>()
                                              .add(const FavoritePostsLoaded());
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
        ),
      ),
    );
  }
}
