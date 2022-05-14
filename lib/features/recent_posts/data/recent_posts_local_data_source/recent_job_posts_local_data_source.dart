import 'package:doors/core/models/job_post.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

abstract class RecentJobPostsLocalDataSource {
  /// Get local recent job posts
  ///
  /// Returns a unmodifiable list of job posts
  Future<UnmodifiableListView<JobPost>> getLocalRecentJobPosts();

  /// Add new job posts to cache, will be added to the end of the current cached job posts
  Future<void> appendLocalRecentJobPosts(List<JobPost> newJobPosts);

  /// Returns the count of cached job posts
  Future<int> getCountOfCachedJobPosts();

  /// Clears all the cached job posts
  Future<void> clearCache();
}

class RecentJobPostsLocalDataSourceImpl extends RecentJobPostsLocalDataSource {
  final List<JobPost> _recentJobPosts = [];
  @override
  Future<UnmodifiableListView<JobPost>> getLocalRecentJobPosts() async =>
      UnmodifiableListView(_recentJobPosts);

  @override
  Future<void> appendLocalRecentJobPosts(List<JobPost> newJobPosts) async =>
      _recentJobPosts.addAll(newJobPosts);

  @override
  Future<void> clearCache() async {
    _recentJobPosts.clear();
  }

  @override
  Future<int> getCountOfCachedJobPosts() async => _recentJobPosts.length;
}
