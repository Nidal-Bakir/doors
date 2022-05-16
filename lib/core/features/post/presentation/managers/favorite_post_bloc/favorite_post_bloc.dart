import 'package:bloc/bloc.dart';
import 'package:doors/core/errors/exception_base.dart';
import 'package:doors/core/features/post/repository/favorite_repository.dart';
import 'package:doors/core/models/post.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_post_event.dart';
part 'favorite_post_state.dart';
part 'favorite_post_bloc.freezed.dart';

class FavoritePostBloc extends Bloc<FavoritePostEvent, FavoritePostState> {
  final FavoriteRepository _favoriteRepository;
  FavoritePostBloc(this._favoriteRepository)
      : super(const FavoritePostInProgress()) {
    on<FavoritePostEvent>((event, emit) async {
      await event.map(
          addPostToFavoriteList: (event) async =>
              await _onAddPostToFavoriteList(event, emit),
          removePostFromFavoriteList: (event) async =>
              await _onRemovePostFromFavoriteList(event, emit),
          isFavoritePost: (event) async =>
              await _onIsFavoritePost(event, emit));
    });
  }

  Future<void> _onAddPostToFavoriteList(FavoritePostAddPostToFavoriteList event,
      Emitter<FavoritePostState> emit) async {
    emit(const FavoritePostInProgress());
    final addPostToFavoriteList =
        await _favoriteRepository.addPostToUserFavoriteList(event.post);
    addPostToFavoriteList.fold((error) => emit(FavoritePostLoadFailure(error)),
        (_) => emit(const FavoritePostLoadSuccess(true)));
  }

  Future<void> _onRemovePostFromFavoriteList(
      FavoritePostRemovePostFromFavoriteList event,
      Emitter<FavoritePostState> emit) async {
    emit(const FavoritePostInProgress());
    final addPostToFavoriteList = await _favoriteRepository
        .removePostFromUserFavoriteList(event.favoritePost);
    addPostToFavoriteList.fold((error) => emit(FavoritePostLoadFailure(error)),
        (_) => emit(const FavoritePostLoadSuccess(false)));
  }

  Future<void> _onIsFavoritePost(
      FavoritePostIsFavoritePost event, Emitter<FavoritePostState> emit) async {
    emit(const FavoritePostInProgress());
    final addPostToFavoriteList =
        await _favoriteRepository.isFavoritePost(event.post);
    addPostToFavoriteList.fold((error) => emit(FavoritePostLoadFailure(error)),
        (isFavoritePost) => emit(FavoritePostLoadSuccess(isFavoritePost)));
  }
}
