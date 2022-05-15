import 'package:doors/core/config/global_config.dart';
import 'package:doors/core/errors/server_error.dart';
import 'package:doors/core/features/auth/model/user.dart';
import 'package:doors/core/models/service_post.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

abstract class UserPostsRemoteDataSource {
  /// Get a list of user posts.
  ///
  /// [amountToSkip]: For pagination, where it's the count of the current
  /// loaded user posts
  ///
  /// [userId]: the user id for user which will get his posts.
  ///
  /// Returns a UnmodifiableList of user posts
  ///
  /// Throws [ServerException]  In case of connection error or parse error.
  Future<UnmodifiableListView<ServicePost>> getUserPosts(
    int amountToSkip,
    String userId,
  );
}

class UserPostsRemoteDataSourceImpl extends UserPostsRemoteDataSource {
  @override
  Future<UnmodifiableListView<ServicePost>> getUserPosts(
    int amountToSkip,
    String userId,
  ) async {
    final userPostsQuery = QueryBuilder.name(ServicePost.keyClassName)
      ..whereRelatedTo(User.keyUserServicePosts, User.keyUserClassName, userId)
      ..orderByDescending(ServicePost.keyPostCreationDate)
      ..includeObject([ServicePost.keyAuthor])
      ..excludeKeys(User.keysToExcludeFromQueriesRelatedToUser())
      ..setAmountToSkip(amountToSkip)
      ..setLimit(GlobalConfig.amountOfResultPeerRequest);

    final ParseResponse listOfUserPostsResponse;
    try {
      listOfUserPostsResponse = await userPostsQuery.query();
    } catch (e) {
      throw const NoConnectionException('can not get a list of user posts');
    }
    if (listOfUserPostsResponse.success &&
        listOfUserPostsResponse.error == null &&
        listOfUserPostsResponse.result != null) {
      return UnmodifiableListView(
        List<ServicePost>.from(
          listOfUserPostsResponse.results!,
        ),
      );
    } else {
      final error =
          ParseException.extractParseException(listOfUserPostsResponse.error!);
      // parse sdk will return error in case no results found
      if (error is ParseSuccessResponseWithNoResults) {
        return UnmodifiableListView(List.empty());
      }
      throw error;
    }
  }
}
