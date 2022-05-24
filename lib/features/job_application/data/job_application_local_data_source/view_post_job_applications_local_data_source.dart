import 'dart:collection';

import 'package:doors/core/models/job_application.dart';

abstract class ViewPostJobApplicationsLocalDataSource {
  /// Get a list of local applied applications on job post.
  ///
  /// Returns a unmodifiable list of local applied applications on job post.
  Future<UnmodifiableListView<JobApplication>> getLocalPostJobApplications();

  /// Add new posts to cache, will be added to the end of the current cached job applications
  Future<void> appendLocalPostJobApplications(
      List<JobApplication> newJobApplications);

  /// Returns the count of cached job applications
  Future<int> getCountOfCachedPostJobApplications();

  /// Clears all the cached job applications
  Future<void> clearCache();
}

class ViewPostJobApplicationsLocalDataSourceImpl
    extends ViewPostJobApplicationsLocalDataSource {
  final List<JobApplication> _postJobApplications = [];

  @override
  Future<UnmodifiableListView<JobApplication>>
      getLocalPostJobApplications() async =>
          UnmodifiableListView(_postJobApplications);

  @override
  Future<void> appendLocalPostJobApplications(
          List<JobApplication> newJobApplications) async =>
      _postJobApplications.addAll(newJobApplications);

  @override
  Future<int> getCountOfCachedPostJobApplications() async =>
      _postJobApplications.length;

  @override
  Future<void> clearCache() async => _postJobApplications.clear();
}
