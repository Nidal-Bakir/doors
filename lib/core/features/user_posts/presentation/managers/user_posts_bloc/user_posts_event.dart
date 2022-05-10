part of 'user_posts_bloc.dart';

@freezed
class UserPostsEvent with _$UserPostsEvent {
  const factory UserPostsEvent.loaded( String userId) = UserPostsLoaded;
  const factory UserPostsEvent.refreshed( String userId) = UserPostsRefreshed;
}