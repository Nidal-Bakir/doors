import 'package:doors/core/features/post/model/post.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

abstract class RecentPostsLocalDataSource {
  /// Get local recent needed posts
  ///
  /// Returns a unmodifiable list of recent needed posts
  Future<UnmodifiableListView<Post>> getLocalRecentNeededPosts();

  /// Get local recent offered posts
  ///
  /// Returns a unmodifiable list of recent offered posts
  Future<UnmodifiableListView<Post>> getLocalRecentOfferedPosts();

  /// Add new posts to cache, will be added to the end of the current cached posts
  Future<void> appendLocalRecentNeededPosts(List<Post> newNeededPosts);

  /// Add new posts to cache, will be added to the end of the current cached posts
  Future<void> appendLocalRecentOfferedPosts(List<Post> newOfferedPosts);

  /// Returns the count of cached recent needed posts
  Future<int> getCountOfCachedRecentNeededPosts();

  /// Returns the count of cached recent offered posts
  Future<int> getCountOfCachedRecentOfferedPosts();

  /// Clears needed posts cache
  Future<void> clearRecentNeededPostsCache();

  /// Clears offered posts cache
  Future<void> clearRecentOfferedPostsCache();

  /// Clears all the cached post
  Future<void> clearCache();
}

class RecentPostsLocalDataSourceImpl extends RecentPostsLocalDataSource {
  final List<Post> _recentNeededPosts = [];
  final List<Post> _recentOfferedPosts = [];
  @override
  Future<UnmodifiableListView<Post>> getLocalRecentNeededPosts() async =>
      UnmodifiableListView(_recentNeededPosts);

  @override
  Future<UnmodifiableListView<Post>> getLocalRecentOfferedPosts() async =>
      UnmodifiableListView(_recentOfferedPosts);

  @override
  Future<void> appendLocalRecentNeededPosts(List<Post> newNeededPosts) async =>
      _recentNeededPosts.addAll(newNeededPosts);

  @override
  Future<void> appendLocalRecentOfferedPosts(
          List<Post> newOfferedPosts) async =>
      _recentOfferedPosts.addAll(newOfferedPosts);

  @override
  Future<void> clearCache() async {
    _recentNeededPosts.clear();
    _recentOfferedPosts.clear();
  }

  @override
  Future<int> getCountOfCachedRecentNeededPosts() async =>
      _recentNeededPosts.length;

  @override
  Future<int> getCountOfCachedRecentOfferedPosts() async =>
      _recentOfferedPosts.length;

  @override
  Future<void> clearRecentNeededPostsCache() async =>
      _recentNeededPosts.clear();

  @override
  Future<void> clearRecentOfferedPostsCache() async =>
      _recentOfferedPosts.clear();
}
