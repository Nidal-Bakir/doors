part of 'favorite_posts_bloc.dart';

@freezed
class FavoritePostsState with _$FavoritePostsState {
  const factory FavoritePostsState.inProgress() = FavoritePostsInProgress;

  const factory FavoritePostsState.loadSuccess(
      UnmodifiableListView<Post> favoritePosts) = FavoritePostsLoadSuccess;

  const factory FavoritePostsState.loadFailure(
          ExceptionBase error, UnmodifiableListView<Post> cachedRecentPosts) =
      FavoritePostsLoadFailure;
}
