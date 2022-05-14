import 'dart:collection';

import 'package:doors/core/config/global_config.dart';
import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/errors/server_error.dart';
import 'package:doors/core/features/auth/model/user.dart';
import 'package:doors/core/models/service_post.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

abstract class RecentServicePostsRemoteDataSource {
  /// Get remote recent needed service posts
  ///
  /// [amountToSkip]: For pagination, where it's the count of the current loaded posts
  ///
  /// Returns a list of recent needed service posts
  ///
  /// Throws [ServerException].
  Future<UnmodifiableListView<ServicePost>> getRemoteRecentNeededServicePosts(
      int amountToSkip);

  /// Get remote recent offered service posts
  ///
  /// [amountToSkip]: For pagination, where it's the count of the current loaded service posts
  ///
  /// Returns a list of recent offered service posts
  ///
  /// Throws [ServerException].
  Future<UnmodifiableListView<ServicePost>> getRemoteRecentOfferedServicePosts(
      int amountToSkip);
}

class RecentServicePostsRemoteDataSourceImpl
    extends RecentServicePostsRemoteDataSource {
  @override
  Future<UnmodifiableListView<ServicePost>> getRemoteRecentNeededServicePosts(
      int amountToSkip) async {
    return _loadServicePosts(amountToSkip, ServiceType.need);
  }

  @override
  Future<UnmodifiableListView<ServicePost>> getRemoteRecentOfferedServicePosts(
      int amountToSkip) async {
    return _loadServicePosts(amountToSkip, ServiceType.offer);
  }
}

Future<UnmodifiableListView<ServicePost>> _loadServicePosts(
    int amountToSkip, ServiceType servicePostType) async {
  QueryBuilder queryBuilder = QueryBuilder.name(ServicePost.keyClassName)
    ..whereEqualTo(ServicePost.keyPostType, servicePostType.name)
    ..orderByDescending(ServicePost.keyPostCreationDate)
    ..includeObject([ServicePost.keyAuthor])
    ..excludeKeys(User.keysToExcludeFromQueriesRelatedToUser())
    ..setAmountToSkip(amountToSkip)
    ..setLimit(GlobalConfig.amountOfResultPeerRequest);

  ParseResponse recentNeededServicePostsResponse;
  try {
    recentNeededServicePostsResponse = await queryBuilder.query();
  } catch (e) {
    throw NoConnectionException(
        'con\'t load recent ${servicePostType.name} posts');
  }

  if (recentNeededServicePostsResponse.success &&
      recentNeededServicePostsResponse.error == null &&
      recentNeededServicePostsResponse.results != null) {
    return UnmodifiableListView(
      List<ServicePost>.from(
        recentNeededServicePostsResponse.results!,
        growable: false,
      ),
    );
  } else {
    final error = ParseException.extractParseException(
        recentNeededServicePostsResponse.error!);
    // parse sdk will return error in case no results found
    if (error is ParseSuccessResponseWithNoResults) {
      return UnmodifiableListView(List.empty());
    }
    throw error;
  }
}
