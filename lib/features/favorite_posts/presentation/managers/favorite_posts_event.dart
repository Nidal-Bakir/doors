part of 'favorite_posts_bloc.dart';

@freezed
class FavoritePostsEvent with _$FavoritePostsEvent {
  const factory FavoritePostsEvent.loaded() = FavoritePostsLoaded;
  const factory FavoritePostsEvent.refreshed() = FavoritePostsRefreshed;
}