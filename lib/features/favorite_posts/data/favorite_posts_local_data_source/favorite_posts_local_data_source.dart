import 'dart:collection';

import 'package:doors/core/features/post/model/post.dart';

abstract class FavoritePostsLocalDataSource {
  /// Get local favorite posts
  ///
  /// Returns a unmodifiable list of local favorite posts
  Future<UnmodifiableListView<Post>> getLocalFavoritePosts();

  /// Add new posts to cache, will be added to the end of the current cached posts
  Future<void> appendLocalFavoritePosts(List<Post> newFavoritePosts);

  /// Returns the count of cached favorite posts
  Future<int> getCountOfCachedFavoritePosts();

  /// Clears all the cached favorite posts
  Future<void> clearCache();
}

class FavoritePostsLocalDataSourceImpl extends FavoritePostsLocalDataSource {
  final List<Post> _favoritePosts = [];

  @override
  Future<UnmodifiableListView<Post>> getLocalFavoritePosts() async =>
      UnmodifiableListView(_favoritePosts);

  @override
  Future<void> appendLocalFavoritePosts(List<Post> newFavoritePosts) async =>
      _favoritePosts.addAll(newFavoritePosts);

  @override
  Future<int> getCountOfCachedFavoritePosts() async => _favoritePosts.length;

  @override
  Future<void> clearCache() async => _favoritePosts.clear();
}
