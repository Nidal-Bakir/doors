import 'package:doors/core/features/user_posts/presentation/managers/user_posts_bloc/user_posts_bloc.dart';
import 'package:doors/core/widgets/loading_indicator.dart';
import 'package:doors/core/widgets/no_internet_connection.dart';
import 'package:doors/core/widgets/no_result_found.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserPostsErrorHandlerSliverFillRemaining extends StatelessWidget {
  final String userId;
  const UserPostsErrorHandlerSliverFillRemaining({
    Key? key,
    required this.userId,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserPostsBloc, UserPostsState>(
      builder: (context, state) {
        return SliverFillRemaining(
          fillOverscroll: false,
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsetsDirectional.only(bottom: 20),
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
                          .read<UserPostsBloc>()
                          .add(UserPostsLoaded(userId));
                    },
                    fullScreen: true,
                  );
                } else {
                  return NoInternetConnection(
                    onRetry: () {
                      context
                          .read<UserPostsBloc>()
                          .add(UserPostsLoaded(userId));
                    },
                  );
                }
              },
            ),
          ),
        );
      },
    );
  }
}
