part of 'favorite_post_bloc.dart';

@freezed
class FavoritePostState with _$FavoritePostState {
  const factory FavoritePostState.inProgress() = FavoritePostInProgress;
  const factory FavoritePostState.loadSuccess(bool isFavorite) = FavoritePostLoadSuccess;
  const factory FavoritePostState.loadFailure(ExceptionBase exception) = FavoritePostLoadFailure;
}
