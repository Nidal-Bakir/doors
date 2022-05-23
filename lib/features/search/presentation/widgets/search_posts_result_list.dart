import 'package:doors/core/utils/global_functions/global_functions.dart';
import 'package:doors/core/widgets/loading_indicator.dart';
import 'package:doors/core/widgets/no_internet_connection.dart';
import 'package:doors/core/widgets/no_result_found.dart';
import 'package:doors/core/widgets/posts_sliver_list.dart';
import 'package:doors/features/search/presentation/managers/posts_search_bloc/posts_search_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchPostsResultList extends StatefulWidget {
  const SearchPostsResultList({Key? key}) : super(key: key);

  @override
  State<SearchPostsResultList> createState() => _SearchPostsResultListState();
}

class _SearchPostsResultListState extends State<SearchPostsResultList> {
  var _postsCount = 0;
  @override
  Widget build(BuildContext context) {
    return BlocListener<PostsSearchBloc, PostsSearchState>(
      listener: (context, state) {
        if (state is PostsSearchLoadFailure) {
          showErrorSnackBar(context, state.error.getLocalMessageError(context));
        }
      },
      child: NotificationListener<ScrollNotification>(
        onNotification: (notification) => notificationListener(
          notification: notification,
          onNotify: () {
            final _recentPostsBloc = context.read<PostsSearchBloc>();
            if (_recentPostsBloc.state is PostsSearchLoadSuccess &&
                canGetMorePosts(_postsCount)) {
              _recentPostsBloc.add(const PostsSearchMoreSearchResultLoaded());
            }
          },
        ),
        child: CustomScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          slivers: [
            // do not remove the empty SliverToBoxAdapter will case view port error
            // its looks like a bug in the frameWork
            const SliverToBoxAdapter(),
            BlocBuilder<PostsSearchBloc, PostsSearchState>(
              buildWhen: (previous, current) =>
                  current is PostsSearchLoadSuccess ||
                  current is PostsSearchInitial,
              builder: (context, state) {
                if (state is PostsSearchInitial) {
                  return const SliverToBoxAdapter();
                }
                final _postsSearchLoadSuccessState =
                    (state as PostsSearchLoadSuccess);
                _postsCount =
                    _postsSearchLoadSuccessState.postsSearchResult.length;
                return PostsSliverList(
                  posts: _postsSearchLoadSuccessState.postsSearchResult,
                );
              },
            ),
            BlocBuilder<PostsSearchBloc, PostsSearchState>(
              builder: (context, state) {
                return SliverFillRemaining(
                  fillOverscroll: false,
                  hasScrollBody: false,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: state.when(
                      initial: () => const SizedBox.shrink(),
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
                              context.read<PostsSearchBloc>().add(
                                  const PostsSearchMoreSearchResultLoaded());
                            },
                            fullScreen: true,
                          );
                        } else {
                          return NoInternetConnection(
                            onRetry: () {
                              context.read<PostsSearchBloc>().add(
                                  const PostsSearchMoreSearchResultLoaded());
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
    );
  }
}
