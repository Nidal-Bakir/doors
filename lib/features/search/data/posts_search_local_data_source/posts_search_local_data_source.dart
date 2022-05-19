import 'package:collection/collection.dart';
import 'package:doors/core/models/post.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

abstract class PostsSearchLocalDataSource {
  /// Get local search posts
  ///
  /// Returns a unmodifiable list of local search posts, sorted using (isSubscribed)
  UnmodifiableListView<Post> getLocalSearchPosts();

  /// Add new search to cache, will be added to the end of the current cached posts
  void appendLocalSearchPosts(List<Post> newSearchPosts);

  /// Returns the count of cached search posts
  int getCountOfCachedSearchPosts();

  /// Clears all the cached search posts
  void clearCache();
}

class PostsSearchLocalDataSourceImpl extends PostsSearchLocalDataSource {
  final PriorityQueue<Post> _searchPosts = PriorityQueue(
    (p0, p1) => p1.author.isSubscribed ? 1 : 0,
  );

  @override
  UnmodifiableListView<Post> getLocalSearchPosts() =>
      UnmodifiableListView(_searchPosts.toList());

  @override
  void appendLocalSearchPosts(List<Post> newSearchPosts) =>
      _searchPosts.addAll(newSearchPosts);

  @override
  int getCountOfCachedSearchPosts() => _searchPosts.length;

  @override
  void clearCache() => _searchPosts.clear();
}
