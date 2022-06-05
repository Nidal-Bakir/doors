import 'dart:async';

import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/utils/global_functions/global_functions.dart';
import 'package:doors/core/widgets/loading_indicator.dart';
import 'package:doors/core/widgets/no_internet_connection.dart';
import 'package:doors/core/widgets/no_result_found.dart';
import 'package:doors/core/widgets/posts_sliver_list.dart';
import 'package:doors/core/widgets/primary_color_background_for_scaffold.dart';
import 'package:doors/features/favorite_posts/presentation/managers/favorite_posts_bloc.dart';
import 'package:doors/features/favorite_posts/presentation/widgets/current_favorite_posts_label_with_posts_view_filter.dart';
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

  var _isFavoriteJobPostsHasFirstLoad = false;

  var _favoritePostsViewFilter = PostsViewFilter.services;

  late FavoritePostsBloc _serviceFavoritePostsBloc;
  late FavoritePostsBloc _jobsFavoritePostsBloc;
  late FavoritePostsBloc _currentUsedFavoritePostsBloc;

  FavoritePostsBloc _createServiceFavoritePostsBloc() {
    _serviceFavoritePostsBloc = GetIt.I.get<FavoritePostsBloc>(
      param1: context.read<ManagePostBloc>(),
      param2: PostsViewFilter.services,
    )..add(const FavoritePostsLoaded());

    _currentUsedFavoritePostsBloc = _serviceFavoritePostsBloc;

    return _serviceFavoritePostsBloc;
  }

  FavoritePostsBloc _createJobFavoritePostsBloc() {
    _jobsFavoritePostsBloc = GetIt.I.get<FavoritePostsBloc>(
      param1: context.read<ManagePostBloc>(),
      param2: PostsViewFilter.jobs,
    );
    return _jobsFavoritePostsBloc;
  }

  @override
  Widget build(BuildContext context) {
    return PrimaryColorBackgroundForScaffold(
      scaffoldWidget: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(
            context.loc.favorite_posts,
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        body: MultiBlocProvider(
          providers: [
            BlocProvider<FavoritePostsBloc>(
              lazy: false,
              create: (_) => _createServiceFavoritePostsBloc(),
            ),
            BlocProvider<FavoritePostsBloc>(
              lazy: false,
              create: (_) => _createJobFavoritePostsBloc(),
            ),
          ],
          child: Builder(builder: (context) {
            return BlocProvider.value(
              key: Key(_favoritePostsViewFilter.name + ',provider'),
              value: _currentUsedFavoritePostsBloc,
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
                                canLoadMoreData(_favoritePostsCount)) {
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
                            CurrentFavoritePostsLabelWithPostsViewFilter(
                              currentPostsViewFilter: _favoritePostsViewFilter,
                              onViewChange: _onViewChange,
                            ),
                            BlocBuilder<FavoritePostsBloc, FavoritePostsState>(
                              key: Key(
                                _favoritePostsViewFilter.name + ',posts',
                              ),
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
                                _favoritePostsCount =
                                    _favoritePostsLoadSuccessState
                                        .favoritePosts.length;
                                return PostsSliverList(
                                  posts: _favoritePostsLoadSuccessState
                                      .favoritePosts,
                                );
                              },
                            ),
                            BlocBuilder<FavoritePostsBloc, FavoritePostsState>(
                              key: Key(
                                _favoritePostsViewFilter.name + ',fill',
                              ),
                              builder: (context, state) {
                                return SliverFillRemaining(
                                  fillOverscroll: false,
                                  hasScrollBody: false,
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.only(bottom: 20),
                                    child: state.when(
                                      inProgress: () => const Padding(
                                        padding: EdgeInsets.symmetric(
                                            vertical: 16.0),
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
                                                  .add(
                                                      const FavoritePostsLoaded());
                                            },
                                            fullScreen: true,
                                          );
                                        } else {
                                          return NoInternetConnection(
                                            onRetry: () {
                                              context
                                                  .read<FavoritePostsBloc>()
                                                  .add(
                                                      const FavoritePostsLoaded());
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
          }),
        ),
      ),
    );
  }

  void _onViewChange(PostsViewFilter currentFavoritePostsView) {
    switch (currentFavoritePostsView) {
      case PostsViewFilter.services:
        if (_favoritePostsViewFilter != currentFavoritePostsView) {
          setState(() {
            _favoritePostsViewFilter = currentFavoritePostsView;
            _currentUsedFavoritePostsBloc = _serviceFavoritePostsBloc;
          });
        }
        break;
      case PostsViewFilter.jobs:
        if (_favoritePostsViewFilter != currentFavoritePostsView) {
          if (!_isFavoriteJobPostsHasFirstLoad) {
            _jobsFavoritePostsBloc.add(const FavoritePostsLoaded());
          }
          setState(() {
            _isFavoriteJobPostsHasFirstLoad = true;
            _favoritePostsViewFilter = currentFavoritePostsView;
            _currentUsedFavoritePostsBloc = _jobsFavoritePostsBloc;
          });
        }
        break;
    }
  }
}
