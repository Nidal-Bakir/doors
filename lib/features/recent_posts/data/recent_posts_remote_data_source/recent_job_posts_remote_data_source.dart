import 'dart:collection';

import 'package:doors/core/config/global_config.dart';
import 'package:doors/core/errors/server_error.dart';
import 'package:doors/core/models/user.dart';
import 'package:doors/core/models/job_post.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';
import 'package:doors/core/extensions/list/list_remove_blocked_posts.dart';

abstract class RecentJobPostsRemoteDataSource {
  /// Get recent job posts
  ///
  /// [amountToSkip]: For pagination, where it's the count of the current loaded job posts
  ///
  /// Returns a list of recent job posts
  ///
  /// Throws [ServerException].
  Future<UnmodifiableListView<JobPost>> getRecentJobPosts(
    int amountToSkip,
  );
}

class RecentJobPostsRemoteDataSourceImpl
    extends RecentJobPostsRemoteDataSource {
  @override
  Future<UnmodifiableListView<JobPost>> getRecentJobPosts(
    int amountToSkip,
  ) async {
    final _currentUser = (await ParseUser.currentUser()) as User;

    QueryBuilder queryBuilder = QueryBuilder.name(JobPost.keyClassName)
      ..orderByDescending(JobPost.keyJobCreationDate)
      ..includeObject([JobPost.keyAuthor])
      ..excludeKeys(User.keysToExcludeFromQueriesRelatedToUser())
      ..setAmountToSkip(amountToSkip)
      ..setLimit(GlobalConfig.amountOfResultPeerRequest);

    ParseResponse jopPostsResponse;
    try {
      jopPostsResponse = await queryBuilder.query();
    } catch (e) {
      throw NoConnectionException(
          'con\'t load recent Job post' '\n error:  ' + e.toString());
    }

    if (jopPostsResponse.success &&
        jopPostsResponse.error == null &&
        jopPostsResponse.results != null) {
      return UnmodifiableListView(
        List<JobPost>.from(
          jopPostsResponse.results!,
          growable: false,
        ).removeBlockedUsersPosts(_currentUser),
      );
    } else {
      final error =
          ParseException.extractParseException(jopPostsResponse.error);
      // parse sdk will return error in case no results found
      if (error is ParseSuccessResponseWithNoResults) {
        return UnmodifiableListView(List.empty());
      }
      throw error;
    }
  }
}
