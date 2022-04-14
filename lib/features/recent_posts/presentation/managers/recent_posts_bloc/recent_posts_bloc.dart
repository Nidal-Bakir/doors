import 'package:bloc/bloc.dart';
import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/errors/server_error.dart';
import 'package:doors/core/features/post/model/post.dart';
import 'package:doors/features/recent_posts/repository/recent_posts_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'recent_posts_event.dart';
part 'recent_posts_state.dart';
part 'recent_posts_bloc.freezed.dart';

class RecentPostsBloc extends Bloc<RecentPostsEvent, RecentPostsState> {
  final RecentPostsRepository _recentPostsRepository;
  final PostType _postType;
  RecentPostsBloc(this._recentPostsRepository, this._postType)
      : super(const RecentPostsInProgress()) {
    on<RecentPostsEvent>(
      (event, emit) async {
        await event.map(
            loaded: (event) async => await _onRecentPostsLoaded(event, emit),
            refreshed: (event) async =>
                await _onRecentPostsRefreshed(event, emit));
      },
    );
  }

  Future<void> _onRecentPostsLoaded(
      RecentPostsLoaded value, Emitter<RecentPostsState> emit) async {
    emit(const RecentPostsInProgress());
    
    (await _getRecentPosts()).fold(
        (errorAndCachedPosts) => emit(
              RecentPostsLoadFailure(
                errorAndCachedPosts.head,
                errorAndCachedPosts.tail,
              ),
            ),
        (posts) => emit(RecentPostsLoadSuccess(posts)));
  }

  Future<void> _onRecentPostsRefreshed(
      RecentPostsRefreshed event, Emitter<RecentPostsState> emit) async {
    emit(const RecentPostsInProgress());

    (await _getRecentPosts(fullRefresh: true)).fold(
        (errorAndCachedPosts) => emit(RecentPostsLoadFailure(
            errorAndCachedPosts.head, UnmodifiableListView([]))),
        (posts) => emit(RecentPostsLoadSuccess(posts)));
  }

  Future<EitherDataOrDataWithError<ServerException, Post>> _getRecentPosts(
          {bool fullRefresh = false}) =>
      _postType == PostType.need
          ? _recentPostsRepository.getRecentNeededPosts(
              fullRefresh: fullRefresh)
          : _recentPostsRepository.getRecentOfferedPosts(
              fullRefresh: fullRefresh);
}