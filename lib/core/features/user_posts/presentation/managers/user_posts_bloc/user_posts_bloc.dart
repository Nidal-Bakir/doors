import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:doors/core/errors/exception_base.dart';
import 'package:doors/core/features/user_posts/repository/user_posts_repository.dart';
import 'package:doors/core/models/post.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_posts_bloc.freezed.dart';
part 'user_posts_event.dart';
part 'user_posts_state.dart';

class UserPostsBloc extends Bloc<UserPostsEvent, UserPostsState> {
  final UserPostsRepository _userPostsRepository;
  final String postsClassName;
  final String relationFieldName;
  UserPostsBloc({
    required UserPostsRepository userPostsRepository,
    required this.postsClassName,
    required this.relationFieldName,
  })  : _userPostsRepository = userPostsRepository,
        super(const UserPostsInProgress()) {

    on<UserPostsLoaded>((event, emit) async {
      await _onUserPostsLoaded(event, emit);
    }, transformer: bloc_concurrency.droppable());

    on<UserPostsRefreshed>((event, emit) async {
      await _onUserPostsRefreshed(event, emit);
    }, transformer: bloc_concurrency.restartable());

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
      postsClassName: postsClassName,
      relationFieldName: relationFieldName,
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
