part of 'recent_job_posts_bloc.dart';

@freezed
class RecentJobPostsState with _$RecentJobPostsState {
  const factory RecentJobPostsState.inProgress() = RecentJobPostsInProgress;

  const factory RecentJobPostsState.loadSuccess(
      UnmodifiableListView<JobPost> recentJobPosts) = RecentJobPostsLoadSuccess;

  const factory RecentJobPostsState.loadFailure(
          ServerException error, UnmodifiableListView<JobPost> cachedRecentJobPosts) =
      RecentJobPostsLoadFailure;
}
