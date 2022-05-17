part of 'user_posts_bloc.dart';

@freezed
class UserPostsState with _$UserPostsState {
  const factory UserPostsState.inProgress() = UserPostsInProgress;

  const factory UserPostsState.loadSuccess(
      UnmodifiableListView<Post> userPosts) = UserPostsLoadSuccess;

  const factory UserPostsState.loadFailure(
          ExceptionBase error, UnmodifiableListView<Post> cachedUserPosts) =
      UserPostsLoadFailure;
}
