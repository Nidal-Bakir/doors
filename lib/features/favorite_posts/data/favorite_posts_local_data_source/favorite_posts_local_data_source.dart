import 'dart:collection';

import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/models/job_post.dart';
import 'package:doors/core/models/post.dart';
import 'package:doors/core/models/service_post.dart';

abstract class FavoritePostsLocalDataSource {
  /// Get local favorite posts.
  ///
  /// [viewFilter] favorite posts type {services | jobs}
  ///
  /// Returns a unmodifiable list of local favorite posts
  Future<UnmodifiableListView<Post>> getLocalFavoritePosts(
    PostsViewFilter viewFilter,
  );

  /// Add new posts to cache, will be added to the end of the current cached posts
  Future<void> appendLocalFavoritePosts(List<Post> newFavoritePosts);

  /// Returns the count of cached favorite posts.
  ///
  /// [viewFilter] post type to get its count, Service or job posts.
  Future<int> getCountOfCachedFavoritePosts(PostsViewFilter viewFilter);

  /// Clears all the cached favorite posts
  Future<void> clearCache();
}

class FavoritePostsLocalDataSourceImpl extends FavoritePostsLocalDataSource {
  final List<Post> _favoritePosts = [];

  @override
  Future<UnmodifiableListView<Post>> getLocalFavoritePosts(
      PostsViewFilter viewFilter) async {
    switch (viewFilter) {
      case PostsViewFilter.services:
        return UnmodifiableListView(_favoritePosts.whereType<ServicePost>());

      case PostsViewFilter.jobs:
        return UnmodifiableListView(_favoritePosts.whereType<JobPost>());
    }
  }

  @override
  Future<void> appendLocalFavoritePosts(List<Post> newFavoritePosts) async =>
      _favoritePosts.addAll(newFavoritePosts);

  @override
  Future<int> getCountOfCachedFavoritePosts(PostsViewFilter viewFilter) async {
    switch (viewFilter) {
      case PostsViewFilter.services:
        return _favoritePosts.whereType<ServicePost>().length;

      case PostsViewFilter.jobs:
        return _favoritePosts.whereType<JobPost>().length;
    }
  }

  @override
  Future<void> clearCache() async => _favoritePosts.clear();
}
