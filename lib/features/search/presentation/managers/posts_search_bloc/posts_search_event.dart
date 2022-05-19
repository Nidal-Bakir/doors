part of 'posts_search_bloc.dart';

@freezed
class PostsSearchEvent with _$PostsSearchEvent {
  const factory PostsSearchEvent.started(SearchFilter searchFilter) =
      PostsSearchStarted;
  const factory PostsSearchEvent.moreSearchResultLoaded( ) =
     PostsSearchMoreSearchResultLoaded;
}
