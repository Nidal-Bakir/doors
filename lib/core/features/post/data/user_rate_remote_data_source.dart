import 'package:doors/core/errors/exception_base.dart';
import 'package:doors/core/errors/server_error.dart';
import 'package:doors/core/errors/user_error.dart';
import 'package:doors/core/features/auth/model/user.dart';
import 'package:doors/core/features/post/model/post.dart';
import 'package:doors/core/features/post/model/post_rate.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

abstract class UserRateRemoteDataSource {
  /// Get the user rate on a post.
  ///
  /// Returns future that resolve with [PostRate] if the user rated this post in the past.
  ///
  /// Throws [ExceptionBase] :
  /// * [ServerException] in case of connection error or parse error.
  /// * [AnonymousException] if the user is Anonymous user
  Future<PostRate?> getUserRateOnPost(Post post);

  /// Set user rate on a post. The sdk will check if its new rate and add it
  /// or edit existing one based on objectId.
  ///
  /// #### For edited rate:
  /// * Pass the same [postRate] object returned from the Server with edited rate
  /// because it hold the objectId for that rate and the SDK will update the existing rate.
  ///
  /// #### For new rate:
  /// * Pass a new [postRate] object, the new object will not have objectId so the SDK
  /// will know that this is a new rate and create new rate for the post.
  ///
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
  Future<PostRate?> getUserRateOnPost(Post post) async {
    final _currentUser = (await ParseUser.currentUser()) as User;
    if (_currentUser.isAnonymousAccount) {
      throw const AnonymousException(
          'Anonymous user can not have rate on post');
    }

    final postRateQuery = QueryBuilder.name(PostRate.keyClassName);
    // where postRate.author=currentUser AND postRate.post=post
    postRateQuery.whereEqualTo(
      PostRate.keyPost,
      (ParseObject(Post.keyClassName)..objectId = post.objectId).toPointer(),
    );
    postRateQuery.whereEqualTo(
      PostRate.keyRateAuthor,
      (ParseObject(User.keyUserClassName)..objectId = _currentUser.objectId)
          .toPointer(),
    );

    final ParseResponse postRateResponse;
    try {
      postRateResponse = await postRateQuery.query();
    } on Exception {
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
    final ParseResponse postRateResponse;
    try {
      postRateResponse = await postRate.save();
    } on Exception {
      throw const NoConnectionException(
          'can not set the user rate on the post.');
    }
    if (postRateResponse.success &&
        postRateResponse.error == null &&
        postRateResponse.results != null) {
      return postRateResponse.results!.first;
    } else {
      throw ParseException.extractParseException(postRateResponse.error!);
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
    } on Exception {
      throw const NoConnectionException(
          'can not set the user rate on the post.');
    }

    if (!postRateResponse.success && postRateResponse.error != null) {
      throw ParseException.extractParseException(postRateResponse.error!);
    }
  }
}
