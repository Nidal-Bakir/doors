part of 'recent_posts_bloc.dart';

@freezed
class RecentPostsState with _$RecentPostsState {
  const factory RecentPostsState.inProgress() = RecentPostsInProgress;

  const factory RecentPostsState.loadSuccess(
      UnmodifiableListView<Post> recentPosts) = RecentPostsLoadSuccess;

  const factory RecentPostsState.loadFailure(
          ServerException error, UnmodifiableListView<Post> cachedRecentPosts) =
      RecentPostsLoadFailure;
}
