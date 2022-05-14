part of 'favorite_posts_bloc.dart';

@freezed
class FavoritePostsState with _$FavoritePostsState {
  const factory FavoritePostsState.inProgress() = FavoritePostsInProgress;

  const factory FavoritePostsState.loadSuccess(
      UnmodifiableListView<ServicePost> favoritePosts) = FavoritePostsLoadSuccess;

  const factory FavoritePostsState.loadFailure(
          ExceptionBase error, UnmodifiableListView<ServicePost> cachedRecentPosts) =
      FavoritePostsLoadFailure;
}
