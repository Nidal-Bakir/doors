import 'package:doors/core/errors/exception_base.dart';
import 'package:doors/core/errors/server_error.dart';
import 'package:doors/core/errors/user_error.dart';
import 'package:doors/core/features/auth/model/user.dart';
import 'package:doors/core/features/post/model/post_rate.dart';
import 'package:doors/core/models/service_post.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

abstract class UserRateRemoteDataSource {
  /// Get the user rate on a post.
  ///
  /// Returns future that resolve with [PostRate] if the user rated this post in the past.
  ///
  /// Throws [ExceptionBase] :
  /// * [ServerException] in case of connection error or parse error.
  /// * [AnonymousException] if the user is Anonymous user
  Future<PostRate?> getUserRateOnPost(ServicePost post);

  /// Set user rate on a post.
  ///
  /// Cloud code function will be invoked to set the user rate on the post, if
  /// the user editing or creating new rate on a post, the cloud code
  /// will create or edit the rate on the post.
  ///
  /// Returns future that resolve with [PostRate] which has an objectId.
  ///
  /// Throws [ExceptionBase]:
  /// * [ServerException] in case of connection error or parse error.
  /// * [AnonymousException] if the user is Anonymous user
  Future<PostRate> setUserRateOnPost(PostRate postRate);

  /// Delete user rate on a post.
  ///
  /// #### Pass the same [PostRate] object returned from the Server, Because it hold the objectId for that rate
  ///
  /// Returns future that resolve with void to indicate that the remove operation was successful.
  ///
  /// Throws [ExceptionBase]:
  /// * [ServerException] in case of connection error or parse error.
  /// * [AnonymousException] if the user is Anonymous user
  Future<void> removeUserRate(PostRate postRateToRemove);
}

class UserRateRemoteDataSourceImpl extends UserRateRemoteDataSource {
  @override
  Future<PostRate?> getUserRateOnPost(ServicePost post) async {
    final _currentUser = (await ParseUser.currentUser()) as User;
    if (_currentUser.isAnonymousAccount) {
      throw const AnonymousException(
          'Anonymous user can not have rate on post');
    }

    final postRateQuery = QueryBuilder.name(PostRate.keyClassName);
    // where postRate.author=currentUser AND postRate.post=post
    postRateQuery.whereEqualTo(
      PostRate.keyServicePost,
      (ParseObject(ServicePost.keyClassName)..objectId = post.objectId).toPointer(),
    );
    postRateQuery.whereEqualTo(
      PostRate.keyRateAuthor,
      (ParseObject(User.keyUserClassName)..objectId = _currentUser.objectId)
          .toPointer(),
    );

    final ParseResponse postRateResponse;
    try {
      postRateResponse = await postRateQuery.query();
    } catch (e) {
      throw const NoConnectionException('can not get user rate on a post');
    }
    if (postRateResponse.success &&
        postRateResponse.error == null &&
        postRateResponse.results != null) {
      return postRateResponse.results!.first!;
    }
    if (postRateResponse.error != null) {
      final error =
          ParseException.extractParseException(postRateResponse.error!);
      if (error is ParseSuccessResponseWithNoResults) {
        return null;
      }
      throw error;
    }
    return null;
  }

  @override
  Future<PostRate> setUserRateOnPost(PostRate postRate) async {
    final _currentUser = (await ParseUser.currentUser()) as User;
    if (_currentUser.isAnonymousAccount) {
      throw const AnonymousException('Anonymous user can not rate a post.');
    }
    ParseCloudFunction cloudFunction = ParseCloudFunction('setPostRate');
    final ParseResponse postRateResponse;

    try {
      postRateResponse = await cloudFunction.execute(parameters: {
        'rate': postRate.rate,
        "postId": postRate.servicePost.objectId,
        "rateAuthorId": postRate.rateAuthor.objectId,
      });
    } catch (e) {
      throw const NoConnectionException(
          'can not set the user rate on the post.');
    }

    if (postRateResponse.success &&
        postRateResponse.error == null &&
        postRateResponse.result != null) {
      return PostRate().fromJson(postRateResponse.result);
    } else {
      throw ParseException.extractParseException(postRateResponse.error);
    }
  }

  @override
  Future<void> removeUserRate(PostRate postRateToRemove) async {
    assert(postRateToRemove.objectId != null);

    final _currentUser = (await ParseUser.currentUser()) as User;
    if (_currentUser.isAnonymousAccount) {
      throw const AnonymousException('Anonymous user can not rate a post.');
    }

    final ParseResponse postRateResponse;
    try {
      postRateResponse = await postRateToRemove.delete();
    } catch (e) {
      throw const NoConnectionException(
          'can not set the user rate on the post.');
    }

    if (!postRateResponse.success && postRateResponse.error != null) {
      throw ParseException.extractParseException(postRateResponse.error!);
    }
  }
}
