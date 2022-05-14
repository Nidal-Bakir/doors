import 'package:bloc/bloc.dart';
import 'package:doors/core/errors/server_error.dart';
import 'package:doors/core/models/service_post.dart';
import 'package:doors/features/search/models/search_filter.dart';
import 'package:doors/features/search/posts_search/repository/posts_search_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:stream_transform/stream_transform.dart';

part 'posts_search_bloc.freezed.dart';
part 'posts_search_event.dart';
part 'posts_search_state.dart';

class PostsSearchBloc extends Bloc<PostsSearchEvent, PostsSearchState> {
  final PostsSearchRepository _postsSearchRepository;
  PostsSearchBloc(this._postsSearchRepository)
      : super(const PostsSearchInitial()) {
    on<PostsSearchEvent>((event, emit) async {
      await event.map(
          started: (event) async => await _onSearchStarted(event, emit),
          moreSearchResultLoaded: (event) async =>
              await _onMoreSearchResultLoaded(event, emit));
    }, transformer: debounceRestartable());
  }
  var _lastUsedSearchFilter = SearchFilter();

  Future<void> _onSearchStarted(
      PostsSearchStarted event, Emitter<PostsSearchState> emit) async {
    _lastUsedSearchFilter = event.searchFilter;
    await _startSearching(_lastUsedSearchFilter, emit);
  }

  Future<void> _onMoreSearchResultLoaded(
      PostsSearchMoreSearchResultLoaded event,
      Emitter<PostsSearchState> emit) async {
    await _startSearching(_lastUsedSearchFilter, emit);
  }

  Future<void> _startSearching(
      SearchFilter searchFilter, Emitter<PostsSearchState> emit) async {
    if (searchFilter.title?.isEmpty ?? true) {
      return emit(const PostsSearchInitial());
    }
    emit(const PostsSearchInProgress());

    final searchResult =
        await _postsSearchRepository.searchPosts(searchFilter: searchFilter);

    searchResult.fold(
        (errorWithData) => emit(
              PostsSearchLoadFailure(
                errorWithData.head,
                errorWithData.tail,
              ),
            ),
        (searchResult) => emit(PostsSearchLoadSuccess(searchResult)));
  }
}

EventTransformer<Event> debounceRestartable<Event>() {
  return (events, mapper) =>
      events.debounce(const Duration(milliseconds: 500)).switchMap(mapper);
}
