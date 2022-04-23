import 'package:bloc/bloc.dart';
import 'package:doors/core/errors/exception_base.dart';
import 'package:doors/core/features/post/model/post.dart';
import 'package:doors/core/utils/typedef/new_types.dart';
import 'package:doors/features/favorite_posts/repository/favorite_posts_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;

part 'favorite_posts_event.dart';
part 'favorite_posts_state.dart';
part 'favorite_posts_bloc.freezed.dart';

class FavoritePostsBloc extends Bloc<FavoritePostsEvent, FavoritePostsState> {
  final FavoritePostsRepository _favoritePostsRepository;
  FavoritePostsBloc(this._favoritePostsRepository)
      : super(const FavoritePostsInProgress()) {
    on<FavoritePostsEvent>((event, emit) async {
      await event.map(
        loaded: (event) async => await _onFavoritePostsLoaded(event, emit),
        refreshed: (event) async =>
            await _onFavoritePostsRefreshed(event, emit),
      );
    }, transformer: bloc_concurrency.droppable());
  }

  Future<void> _onFavoritePostsLoaded(
      FavoritePostsLoaded event, Emitter<FavoritePostsState> emit) async {
    await _populateFavoritePosts(false, emit);
  }

  Future<void> _onFavoritePostsRefreshed(
      FavoritePostsRefreshed event, Emitter<FavoritePostsState> emit) async {
    await _populateFavoritePosts(true, emit);
  }

  Future<void> _populateFavoritePosts(
    bool fullRefresh,
    Emitter<FavoritePostsState> emit,
  ) async {
    emit(const FavoritePostsInProgress());

    final favoritePostsResult =
        await _favoritePostsRepository.getFavoritePosts();
    favoritePostsResult.fold(
        (errorAndCachedFavoritePosts) => emit(
              FavoritePostsLoadFailure(
                errorAndCachedFavoritePosts.head,
                errorAndCachedFavoritePosts.tail,
              ),
            ),
        (posts) => emit(FavoritePostsLoadSuccess(posts)));
  }
}
