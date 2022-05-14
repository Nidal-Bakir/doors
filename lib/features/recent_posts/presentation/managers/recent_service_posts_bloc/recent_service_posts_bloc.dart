import 'package:bloc/bloc.dart';
import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/errors/server_error.dart';
import 'package:doors/core/models/service_post.dart';
import 'package:doors/core/utils/typedef/new_types.dart';
import 'package:doors/features/manage_post/presentation/managers/manage_post_bloc/manage_post_bloc.dart';
import 'package:doors/features/recent_posts/repository/recent_service_posts_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
part 'recent_service_posts_event.dart';
part 'recent_service_posts_state.dart';
part 'recent_service_posts_bloc.freezed.dart';

class RecentServicePostsBloc
    extends Bloc<RecentServicePostsEvent, RecentServicePostsState> {
  final ManagePostBloc _manageServicePostBloc;
  final RecentServicePostsRepository _recentPostsRepository;
  final ServiceType _postType;
  RecentServicePostsBloc(
      this._recentPostsRepository, this._postType, this._manageServicePostBloc)
      : super(const RecentServicePostsInProgress()) {
    on<RecentServicePostsEvent>((event, emit) async {
      await event.map(
        loaded: (event) async => await _onRecentServicePostsLoaded(event, emit),
        refreshed: (event) async =>
            await _onRecentServicePostsRefreshed(event, emit),
      );
    }, transformer: bloc_concurrency.droppable());

    // so the deleted or the edit post will not appear if they loaded locally
    _manageServicePostBloc.stream.listen((event) {
      if (event is ManagePostDeleteSuccuss || event is ManagePostEditSuccuss) {
        add(const RecentServicePostsRefreshed());
      }
    });
  }

  Future<void> _onRecentServicePostsLoaded(RecentServicePostsLoaded value,
      Emitter<RecentServicePostsState> emit) async {
    emit(const RecentServicePostsInProgress());

    (await _getRecentPosts()).fold(
        (errorAndCachedPosts) => emit(
              RecentServicePostsLoadFailure(
                errorAndCachedPosts.head,
                errorAndCachedPosts.tail,
              ),
            ),
        (posts) => emit(RecentServicePostsLoadSuccess(posts)));
  }

  Future<void> _onRecentServicePostsRefreshed(RecentServicePostsRefreshed event,
      Emitter<RecentServicePostsState> emit) async {
    emit(const RecentServicePostsInProgress());

    (await _getRecentPosts(fullRefresh: true)).fold(
        (errorAndCachedPosts) => emit(RecentServicePostsLoadFailure(
            errorAndCachedPosts.head, UnmodifiableListView([]))),
        (posts) => emit(RecentServicePostsLoadSuccess(posts)));
  }

  Future<EitherDataOrDataWithError<ServerException, ServicePost>>
      _getRecentPosts({bool fullRefresh = false}) =>
          _postType == ServiceType.need
              ? _recentPostsRepository.getRecentNeededServicePosts(
                  fullRefresh: fullRefresh)
              : _recentPostsRepository.getRecentOfferedServicePosts(
                  fullRefresh: fullRefresh);
}
