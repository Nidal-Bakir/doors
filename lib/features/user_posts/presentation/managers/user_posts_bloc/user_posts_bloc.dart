import 'package:bloc/bloc.dart';
import 'package:doors/core/errors/exception_base.dart';
import 'package:doors/core/features/post/model/post.dart';
import 'package:doors/features/manage_post/presentation/managers/manage_post_bloc/manage_post_bloc.dart';
import 'package:doors/features/user_posts/repository/user_posts_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;

part 'user_posts_event.dart';
part 'user_posts_state.dart';
part 'user_posts_bloc.freezed.dart';

class UserPostsBloc extends Bloc<UserPostsEvent, UserPostsState> {
  final UserPostsRepository _userPostsRepository;
  final ManagePostBloc _managePostBloc;
  UserPostsBloc(this._userPostsRepository, this._managePostBloc)
      : super(const UserPostsInProgress()) {
    on<UserPostsEvent>((event, emit) async {
      await event.map(
        loaded: (event) async => await _onUserPostsLoaded(event, emit),
        refreshed: (event) async =>
            await _onUserPostsRefreshed(event, emit),
      );
    }, transformer: bloc_concurrency.droppable());

    // so the deleted or the edit post will not appear if they loaded locally
    _managePostBloc.stream.listen((event) {
      if (event is ManagePostDeleteSuccuss || event is ManagePostEditSuccuss) {
        add(const UserPostsRefreshed());
      }
    });
  }

  Future<void> _onUserPostsLoaded(
     UserPostsLoaded event, Emitter<UserPostsState> emit) async {
    await _populateUserPosts(false, emit);
  }

  Future<void> _onUserPostsRefreshed(
      UserPostsRefreshed event, Emitter<UserPostsState> emit) async {
    await _populateUserPosts(true, emit);
  }

  Future<void> _populateUserPosts(
    bool fullRefresh,
    Emitter<UserPostsState> emit,
  ) async {
    emit(const UserPostsInProgress());

    final favoritePostsResult =
        await _userPostsRepository.getUserPosts();
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
