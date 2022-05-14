part of 'recent_job_posts_bloc.dart';

@freezed
class RecentJobPostsEvent with _$RecentJobPostsEvent {
  const factory RecentJobPostsEvent.loaded() = RecentJobPostsLoaded;
  const factory RecentJobPostsEvent.refreshed() = RecentJobPostsRefreshed;
}
