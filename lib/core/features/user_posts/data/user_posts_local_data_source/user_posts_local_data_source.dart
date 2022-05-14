import 'dart:collection';

import 'package:doors/core/models/service_post.dart';

abstract class UserPostsLocalDataSource {
  /// Get local user posts
  ///
  /// Returns a unmodifiable list of local user posts
  Future<UnmodifiableListView<ServicePost>> getLocalUserPosts();

  /// Add new posts to cache, will be added to the end of the current cached posts
  Future<void> appendLocalUserPosts(List<ServicePost> newFavoritePosts);

  /// Returns the count of cached user posts
  Future<int> getCountOfCachedUserPosts();

  /// Clears all the cached user posts
  Future<void> clearCache();
}

class UserPostsLocalDataSourceImpl extends UserPostsLocalDataSource {
  final List<ServicePost> _userPosts = [];

  @override
  Future<UnmodifiableListView<ServicePost>> getLocalUserPosts() async =>
      UnmodifiableListView(_userPosts);

  @override
  Future<void> appendLocalUserPosts(List<ServicePost> newFavoritePosts) async =>
      _userPosts.addAll(newFavoritePosts);

  @override
  Future<int> getCountOfCachedUserPosts() async => _userPosts.length;

  @override
  Future<void> clearCache() async => _userPosts.clear();
}
