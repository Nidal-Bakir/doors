part of 'recent_service_posts_bloc.dart';

@freezed
class RecentServicePostsState with _$RecentServicePostsState {
  const factory RecentServicePostsState.inProgress() =
      RecentServicePostsInProgress;

  const factory RecentServicePostsState.loadSuccess(
          UnmodifiableListView<ServicePost> recentServicePosts) =
      RecentServicePostsLoadSuccess;

  const factory RecentServicePostsState.loadFailure(ServerException error,
          UnmodifiableListView<ServicePost> cachedRecentServicePosts) =
      RecentServicePostsLoadFailure;
}
