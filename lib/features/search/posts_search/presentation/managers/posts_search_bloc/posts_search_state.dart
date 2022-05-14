part of 'posts_search_bloc.dart';

@freezed
class PostsSearchState with _$PostsSearchState {
  const factory PostsSearchState.initial() = PostsSearchInitial;
  const factory PostsSearchState.inProgress() = PostsSearchInProgress;
  const factory PostsSearchState.loadSuccess(
      UnmodifiableListView<ServicePost> postsSearchResult) = PostsSearchLoadSuccess;

  const factory PostsSearchState.loadFailure(ServerException error,
      UnmodifiableListView<ServicePost> cachedSearchResult) = PostsSearchLoadFailure;
}
