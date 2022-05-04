part of 'user_posts_bloc.dart';

@freezed
class UserPostsEvent with _$UserPostsEvent {
  const factory UserPostsEvent.loaded() = UserPostsLoaded;
  const factory UserPostsEvent.refreshed() = UserPostsRefreshed;
}