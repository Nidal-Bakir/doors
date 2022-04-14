part of 'recent_posts_bloc.dart';

@freezed
class RecentPostsEvent with _$RecentPostsEvent {
  const factory RecentPostsEvent.loaded() = RecentPostsLoaded;
  const factory RecentPostsEvent.refreshed() = RecentPostsRefreshed;
}
