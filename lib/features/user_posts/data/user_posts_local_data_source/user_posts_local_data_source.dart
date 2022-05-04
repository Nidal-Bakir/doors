import 'dart:collection';

import 'package:doors/core/features/post/model/post.dart';

abstract class UserPostsLocalDataSource {
  /// Get local user posts
  ///
  /// Returns a unmodifiable list of local user posts
  Future<UnmodifiableListView<Post>> getLocalUserPosts();

  /// Add new posts to cache, will be added to the end of the current cached posts
  Future<void> appendLocalUserPosts(List<Post> newFavoritePosts);

  /// Returns the count of cached user posts
  Future<int> getCountOfCachedUserPosts();

  /// Clears all the cached user posts
  Future<void> clearCache();
}

class UserPostsLocalDataSourceImpl extends UserPostsLocalDataSource {
  final List<Post> _userPosts = [];

  @override
  Future<UnmodifiableListView<Post>> getLocalUserPosts() async =>
      UnmodifiableListView(_userPosts);

  @override
  Future<void> appendLocalUserPosts(List<Post> newFavoritePosts) async =>
      _userPosts.addAll(newFavoritePosts);

  @override
  Future<int> getCountOfCachedUserPosts() async => _userPosts.length;

  @override
  Future<void> clearCache() async => _userPosts.clear();
}
