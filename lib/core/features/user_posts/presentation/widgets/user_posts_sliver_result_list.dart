import 'package:doors/core/features/user_posts/presentation/managers/user_posts_bloc/user_posts_bloc.dart';
import 'package:doors/core/widgets/posts_sliver_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class UserPostsSliverResultList extends StatelessWidget {
  const UserPostsSliverResultList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserPostsBloc, UserPostsState>(
      buildWhen: (previous, current) => current is UserPostsLoadSuccess,
      builder: (context, state) {
        if (state is UserPostsInProgress) {
          return const SliverToBoxAdapter();
        }
        final _userPostsLoadSuccessState = (state as UserPostsLoadSuccess);

        return PostsSliverList(
          posts: _userPostsLoadSuccessState.userPosts,
        );
      },
    );
  }
}
