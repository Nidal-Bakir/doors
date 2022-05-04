import 'dart:async';

import 'package:doors/core/extensions/build_context/loc.dart';
import 'package:doors/core/features/post/presentation/screen/post_screen.dart';
import 'package:doors/core/features/post/presentation/widgets/post_card_item.dart';
import 'package:doors/core/utils/global_functions/global_functions.dart';
import 'package:doors/core/widgets/loading_indicator.dart';
import 'package:doors/core/widgets/no_internet_connection.dart';
import 'package:doors/core/widgets/no_result_found.dart';
import 'package:doors/core/widgets/primary_color_background_for_scaffold.dart';
import 'package:doors/features/manage_post/presentation/managers/manage_post_bloc/manage_post_bloc.dart';
import 'package:doors/features/user_posts/presentation/managers/user_posts_bloc/user_posts_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class UserPostsScreen extends StatefulWidget {
  static const routeName = '/user-posts';
  const UserPostsScreen({Key? key}) : super(key: key);

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
          create: (context) => GetIt.I.get<UserPostsBloc>(
            param1: context.read<ManagePostBloc>(),
          )..add(const UserPostsLoaded()),
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
                  }
                },
                child: NotificationListener<ScrollNotification>(
                  onNotification: (notification) => notificationListener(
                      notification: notification,
                      onNotify: () {
                        final _recentPostsBloc = context.read<UserPostsBloc>();
                        if (_recentPostsBloc.state is UserPostsLoadSuccess &&
                            canGetMorePosts(_userPostsCount)) {
                          _recentPostsBloc.add(const UserPostsLoaded());
                        }
                      }),
                  child: RefreshIndicator(
                    onRefresh: () {
                      _refreshIndicatorCompleter = Completer<void>();
                      context
                          .read<UserPostsBloc>()
                          .add(const UserPostsRefreshed());

                      return _refreshIndicatorCompleter.future;
                    },
                    child: CustomScrollView(
                      slivers: [
                        // do not remove the empty SliverToBoxAdapter will case view port error
                        // its looks like a bug in the frameWork
                        const SliverToBoxAdapter(),
                        BlocBuilder<UserPostsBloc, UserPostsState>(
                          buildWhen: (previous, current) =>
                              current is UserPostsLoadSuccess,
                          builder: (context, state) {
                            if (state is UserPostsInProgress) {
                              return const SliverToBoxAdapter();
                            }
                            final _favoritePostsLoadSuccessState =
                                (state as UserPostsLoadSuccess);

                            if (!_refreshIndicatorCompleter.isCompleted) {
                              _refreshIndicatorCompleter.complete();
                            }

                            return SliverList(
                              delegate: SliverChildBuilderDelegate(
                                (context, index) {
                                  _userPostsCount =
                                      _favoritePostsLoadSuccessState
                                          .userPosts.length;

                                  final _post = _favoritePostsLoadSuccessState
                                      .userPosts[index];
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
                                    .userPosts.length,
                              ),
                              // itemExtent: 270,
                            );
                          },
                        ),
                        BlocBuilder<UserPostsBloc, UserPostsState>(
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
                                              .read<UserPostsBloc>()
                                              .add(const UserPostsLoaded());
                                        },
                                        fullScreen: true,
                                      );
                                    } else {
                                      return NoInternetConnection(
                                        onRetry: () {
                                          context
                                              .read<UserPostsBloc>()
                                              .add(const UserPostsLoaded());
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
