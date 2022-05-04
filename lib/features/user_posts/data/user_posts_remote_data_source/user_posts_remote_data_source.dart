import 'package:doors/core/config/global_config.dart';
import 'package:doors/core/errors/exception_base.dart';
import 'package:doors/core/errors/server_error.dart';
import 'package:doors/core/errors/user_error.dart';
import 'package:doors/core/features/auth/model/user.dart';
import 'package:doors/core/features/post/model/post.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

abstract class UserPostsRemoteDataSource {
  /// Get a list of user posts.
  ///
  /// [amountToSkip]: For pagination, where it's the count of the current
  /// loaded user posts
  ///
  /// Returns a UnmodifiableList of user posts
  ///
  /// Throws [ExceptionBase] :
  /// * [ServerException] in case of connection error or parse error.
  /// * [AnonymousException] if the user is Anonymous user
  Future<UnmodifiableListView<Post>> getUserPosts(int amountToSkip);
}

class UserPostsRemoteDataSourceImpl extends UserPostsRemoteDataSource {
  @override
  Future<UnmodifiableListView<Post>> getUserPosts(int amountToSkip) async {
    final _currentUser = (await ParseUser.currentUser()) as User;
    if (_currentUser.isAnonymousAccount) {
      throw const AnonymousException(
          'Anonymous user can not have posts');
    }

    final userPostsQuery = QueryBuilder.name(Post.keyClassName)
      ..whereRelatedTo(
          User.keyUserPosts, User.keyUserClassName, _currentUser.userId)
      ..includeObject([Post.keyAuthor])
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
        List<Post>.from(
          listOfUserPostsResponse.results!,
        ),
      );
    } else {
      final error = ParseException.extractParseException(
          listOfUserPostsResponse.error!);
      // parse sdk will return error in case no results found
      if (error is ParseSuccessResponseWithNoResults) {
        return UnmodifiableListView(List.empty());
      }
      throw error;
    }
  }
}
