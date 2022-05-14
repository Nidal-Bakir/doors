part of 'favorite_post_bloc.dart';

@freezed
class FavoritePostEvent with _$FavoritePostEvent {
  const factory FavoritePostEvent.addPostToFavoriteList(ServicePost post) =FavoritePostAddPostToFavoriteList ;
  const factory FavoritePostEvent.removePostFromFavoriteList(ServicePost favoritePost) =FavoritePostRemovePostFromFavoriteList ;
  const factory FavoritePostEvent.isFavoritePost(ServicePost post) =FavoritePostIsFavoritePost ;
}