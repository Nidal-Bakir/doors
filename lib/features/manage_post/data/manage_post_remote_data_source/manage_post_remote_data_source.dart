import 'package:doors/core/errors/server_error.dart';
import 'package:doors/core/errors/user_error.dart';
import 'package:doors/core/features/auth/model/user.dart';
import 'package:doors/core/models/job_post.dart';
import 'package:doors/core/models/post.dart';
import 'package:doors/core/utils/parse_util_global_functions/parse_util_global_function.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

abstract class ManagePostRemoteDataSource {
  /// Create a post.
  ///
  /// Returns void to indicate that the adding operation was successful.
  ///
  /// #### NOTE: cloud code (afterSave) will run to link the created post with its author.
  ///
  /// Throws [ExceptionBase] :
  /// * [ServerException] in case of connection error or parse error.
  /// * [UnSubscribedUser] if the company trying to create new job offer and not Subscribed to any plan.
  /// * [AnonymousException] if the user is Anonymous user
  Future<void> createPost(Post post);

  /// Edit a post.
  ///
  /// [oldPostImage] in case of edit if the user delete or replace the post image,
  /// The [oldPostImage] is a reference of the old image to delete it from parseServer
  ///
  /// Returns void to indicate that the editing operation was successful.
  ///
  /// Throws [ExceptionBase] :
  /// * [ServerException] in case of connection error or parse error.
  /// * [AnonymousException] if the user is Anonymous user
  /// * [ForbiddenOperation] if the user is trying to edit other users posts,
  /// that should not happened, but just in case!
  Future<void> editPost(Post post, ParseFile? oldPostImage);

  /// Delete existing [post] owned by the current user.
  ///
  /// Returns void to indicate that the delete operation was successful.
  ///
  /// Throws [ExceptionBase] :
  /// * [ServerException] in case of connection error or parse error.
  /// * [AnonymousException] if the user is Anonymous user
  /// * [ForbiddenOperation] if the user is trying to delete other users posts,
  /// that should not happened, but just in case!
  Future<void> deletePost(Post post);
}

class ManagePostRemoteDataSourceImpl extends ManagePostRemoteDataSource {
  @override
  Future<void> createPost(Post post) async {
    assert(post.objectId == null);

    final _currentUser = (await ParseUser.currentUser()) as User;
    if (_currentUser.isAnonymousAccount) {
      throw const AnonymousException('Anonymous user can not create posts');
    }
    if (_currentUser.isCompanyAccount &&
        post is JobPost &&
        !_currentUser.isSubscribed) {
      throw const UnSubscribedUser(
        'UnSubscribed company can not create job offers',
      );
    }

    if (post.postImage != null) {
      await saveNewImageToParseServer(post.postImage!);
    }

    final ParseResponse savePostResponse;
    try {
      savePostResponse = await post.create();
    } catch (e) {
      throw NoConnectionException(
          'can not create new post.' '\nerror:' + e.toString());
    }
    if (!savePostResponse.success) {
      throw ParseException.extractParseException(savePostResponse.error);
    }
  }

  @override
  Future<void> editPost(Post post, ParseFile? oldPostImage) async {
    assert(post.objectId != null);
    final _currentUser = (await ParseUser.currentUser()) as User;
    if (_currentUser.isAnonymousAccount) {
      throw const AnonymousException('Anonymous user can not edit posts');
    }
    if (post.author.userId != _currentUser.userId) {
      throw const ForbiddenOperation(
          'the user can not edit other users posts!!');
    }
    await deleteOldImageIfTheCurrentImageChanged(
      oldImage: oldPostImage,
      currentImage: post.postImage,
      objectId: post.objectId!,
      className: post.className,
      imageFieldName: Post.keyPostImage,
    );

    if (post.postImage != null && !post.postImage!.saved) {
      await saveNewImageToParseServer(post.postImage!);
    }

    final ParseResponse editPostResponse;
    try {
      editPostResponse = await post.update();
    } catch (e) {
      throw NoConnectionException(
          'can not edit the post' '\nerror:' + e.toString());
    }
    if (!editPostResponse.success) {
      throw ParseException.extractParseException(editPostResponse.error);
    }
  }

  @override
  Future<void> deletePost(Post post) async {
    assert(post.objectId != null);
    final _currentUser = (await ParseUser.currentUser()) as User;
    if (_currentUser.isAnonymousAccount) {
      throw const AnonymousException('Anonymous user can not delete posts');
    }
    if (post.author.userId != _currentUser.userId) {
      throw const ForbiddenOperation(
          'the user can not delete other users posts!!');
    }
    if (post.postImage != null) {
      await deleteImageFromParserServer(
        objectId: post.objectId!,
        className: post.className,
        imageFieldName: Post.keyPostImage,
      );
    }

    final ParseResponse deletePostResponse;
    try {
      deletePostResponse = await post.delete();
    } catch (e) {
      throw const NoConnectionException('can not delete the post');
    }
    if (!deletePostResponse.success) {
      throw ParseException.extractParseException(deletePostResponse.error);
    }
  }
}
