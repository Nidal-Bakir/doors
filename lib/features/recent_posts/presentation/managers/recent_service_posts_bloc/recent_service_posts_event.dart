part of 'recent_service_posts_bloc.dart';

@freezed
class RecentServicePostsEvent with _$RecentServicePostsEvent {
  const factory RecentServicePostsEvent.loaded() = RecentServicePostsLoaded;
  const factory RecentServicePostsEvent.refreshed() =
      RecentServicePostsRefreshed;
}
