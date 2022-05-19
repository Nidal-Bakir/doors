import 'dart:collection';

import 'package:dartz/dartz.dart';
import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/errors/server_error.dart';
import 'package:doors/core/models/post.dart';
import 'package:doors/core/utils/typedef/new_types.dart';
import 'package:doors/features/search/data/posts_search_local_data_source/posts_search_local_data_source.dart';
import 'package:doors/features/search/data/posts_search_remote_data_source/posts_search_remote_data_source.dart';
import 'package:doors/features/search/models/search_filter.dart';

class PostsSearchRepository {
  final PostsSearchLocalDataSource _postsSearchLocalDataSource;
  final PostsSearchRemoteDataSource _postsSearchRemoteDataSource;

  SearchFilter? _lastsUsedSearchFilter;

  PostsSearchRepository(
    this._postsSearchLocalDataSource,
    this._postsSearchRemoteDataSource,
  );

  /// Get a list of posts search result.
  ///
  /// [viewFilter]: posts type to search for (services | jobs).
  ///
  /// Returns either [UnmodifiableListView] holding the search result.
  ///
  /// OR [Tuple2<ServerException, UnmodifiableListView]:
  /// * head: (the error)
  ///   * [ServerException] in case of connection error or parse error.
  /// * tail: (cached data)
  ///   * holding the local cached search posts
  Future<EitherDataOrDataWithError<ServerException, Post>> searchPosts({
    required SearchFilter searchFilter,
    required PostsViewFilter postsTypeToSearch,
  }) async {
    if (_lastsUsedSearchFilter != searchFilter) {
      _postsSearchLocalDataSource.clearCache();
      _lastsUsedSearchFilter = searchFilter;
    }

    final cachedSearchPostsCount =
        _postsSearchLocalDataSource.getCountOfCachedSearchPosts();

    UnmodifiableListView<Post> searchResultResponse;
    try {
      searchResultResponse = await _postsSearchRemoteDataSource.searchPosts(
        searchFilter: searchFilter,
        postsTypeToSearch: postsTypeToSearch,
        amountToSkip: cachedSearchPostsCount,
      );
    } on ServerException catch (exception) {
      return Left(
        Tuple2(
          exception,
          _postsSearchLocalDataSource.getLocalSearchPosts(),
        ),
      );
    }

    _postsSearchLocalDataSource.appendLocalSearchPosts(searchResultResponse);

    return right(_postsSearchLocalDataSource.getLocalSearchPosts());
  }
}
