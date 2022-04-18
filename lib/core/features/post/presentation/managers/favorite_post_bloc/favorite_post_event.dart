part of 'favorite_post_bloc.dart';

@freezed
class FavoritePostEvent with _$FavoritePostEvent {
  const factory FavoritePostEvent.addPostToFavoriteList(Post post) =FavoritePostAddPostToFavoriteList ;
  const factory FavoritePostEvent.removePostFromFavoriteList(Post favoritePost) =FavoritePostRemovePostFromFavoriteList ;
  const factory FavoritePostEvent.isFavoritePost(Post post) =FavoritePostIsFavoritePost ;
}