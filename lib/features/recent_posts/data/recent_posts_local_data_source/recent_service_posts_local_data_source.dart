import 'package:doors/core/models/service_post.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

abstract class RecentServicePostsLocalDataSource {
  /// Get local recent needed service posts
  ///
  /// Returns a unmodifiable list of recent needed service posts
  Future<UnmodifiableListView<ServicePost>> getLocalRecentNeededServicePosts();

  /// Get local recent offered service posts
  ///
  /// Returns a unmodifiable list of recent offered service posts
  Future<UnmodifiableListView<ServicePost>> getLocalRecentOfferedServicePosts();

  /// Add new posts to cache, will be added to the end of the current cached service posts
  Future<void> appendLocalRecentNeededServicePosts(
      List<ServicePost> newNeededServicePosts);

  /// Add new posts to cache, will be added to the end of the current cached service posts
  Future<void> appendLocalRecentOfferedServicePosts(
      List<ServicePost> newOfferedServicePosts);

  /// Returns the count of cached recent needed service posts
  Future<int> getCountOfCachedRecentNeededServicePosts();

  /// Returns the count of cached recent offered service posts
  Future<int> getCountOfCachedRecentOfferedServicePosts();

  /// Clears needed service posts cache
  Future<void> clearRecentNeededServicePostsCache();

  /// Clears offered service posts cache
  Future<void> clearRecentOfferedServicePostsCache();

  /// Clears all the cached service posts
  Future<void> clearCache();
}

class RecentServicePostsLocalDataSourceImpl
    extends RecentServicePostsLocalDataSource {
  final List<ServicePost> _recentNeededServicePosts = [];
  final List<ServicePost> _recentOfferedServicePosts = [];
  @override
  Future<UnmodifiableListView<ServicePost>>
      getLocalRecentNeededServicePosts() async =>
          UnmodifiableListView(_recentNeededServicePosts);

  @override
  Future<UnmodifiableListView<ServicePost>>
      getLocalRecentOfferedServicePosts() async =>
          UnmodifiableListView(_recentOfferedServicePosts);

  @override
  Future<void> appendLocalRecentNeededServicePosts(
          List<ServicePost> newNeededServicePosts) async =>
      _recentNeededServicePosts.addAll(newNeededServicePosts);

  @override
  Future<void> appendLocalRecentOfferedServicePosts(
          List<ServicePost> newOfferedServicePosts) async =>
      _recentOfferedServicePosts.addAll(newOfferedServicePosts);

  @override
  Future<void> clearCache() async {
    _recentNeededServicePosts.clear();
    _recentOfferedServicePosts.clear();
  }

  @override
  Future<int> getCountOfCachedRecentNeededServicePosts() async =>
      _recentNeededServicePosts.length;

  @override
  Future<int> getCountOfCachedRecentOfferedServicePosts() async =>
      _recentOfferedServicePosts.length;

  @override
  Future<void> clearRecentNeededServicePostsCache() async =>
      _recentNeededServicePosts.clear();

  @override
  Future<void> clearRecentOfferedServicePostsCache() async =>
      _recentOfferedServicePosts.clear();
}
