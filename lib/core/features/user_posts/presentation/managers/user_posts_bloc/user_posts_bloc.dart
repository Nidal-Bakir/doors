import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:doors/core/errors/exception_base.dart';
import 'package:doors/core/features/user_posts/repository/user_posts_repository.dart';
import 'package:doors/core/models/service_post.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_posts_bloc.freezed.dart';
part 'user_posts_event.dart';
part 'user_posts_state.dart';

class UserPostsBloc extends Bloc<UserPostsEvent, UserPostsState> {
  final UserPostsRepository _userPostsRepository;
  UserPostsBloc(this._userPostsRepository)
      : super(const UserPostsInProgress()) {
    on<UserPostsEvent>((event, emit) async {
      await event.map(
        loaded: (event) async => await _onUserPostsLoaded(event, emit),
        refreshed: (event) async => await _onUserPostsRefreshed(event, emit),
      );
    }, transformer: bloc_concurrency.droppable());
  }

  Future<void> _onUserPostsLoaded(
      UserPostsLoaded event, Emitter<UserPostsState> emit) async {
    await _populateUserPosts(false, emit, event.userId);
  }

  Future<void> _onUserPostsRefreshed(
      UserPostsRefreshed event, Emitter<UserPostsState> emit) async {
    await _populateUserPosts(true, emit, event.userId);
  }

  Future<void> _populateUserPosts(
    bool fullRefresh,
    Emitter<UserPostsState> emit,
    String userId,
  ) async {
    emit(const UserPostsInProgress());

    final favoritePostsResult = await _userPostsRepository.getUserPosts(
      fullRefresh: fullRefresh,
      userId: userId,
    );
    favoritePostsResult.fold(
        (errorAndCachedFavoritePosts) => emit(
              UserPostsLoadFailure(
                errorAndCachedFavoritePosts.head,
                errorAndCachedFavoritePosts.tail,
              ),
            ),
        (posts) => emit(UserPostsLoadSuccess(posts)));
  }
}
