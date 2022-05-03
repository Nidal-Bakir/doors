import 'package:doors/core/errors/server_error.dart';
import 'package:doors/core/errors/user_error.dart';
import 'package:doors/core/features/auth/model/user.dart';
import 'package:doors/core/features/post/model/post.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

abstract class ManagePostRemoteDataSource {
  /// Create a post.
  ///
  /// [oldPostImage] in case of edit service if the user delete or replace the post image,
  /// The [oldPostImage] is a reference of the old image to delete it from parseServer
  ///
  /// Returns void to indicate that the adding operation was successful.
  ///
  /// Throws [ExceptionBase] :
  /// * [ServerException] in case of connection error or parse error.
  /// * [AnonymousException] if the user is Anonymous user
  Future<void> createPost(Post post);

  /// Edit a post.
  ///
  /// [oldPostImage] in case of edit service if the user delete or replace the post image,
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

    if (post.postImage != null) {
      await _saveNewPostImage(post.postImage!);
    }

    final ParseResponse savePostResponse;
    try {
      savePostResponse = await post.create();
    } catch (e) {
      throw const NoConnectionException('can not create new post');
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
    await _deleteOldImageIfPostImageChanged(
        oldPostImage, post.postImage, post.objectId!);

    if (post.postImage != null && !post.postImage!.saved) {
      await _saveNewPostImage(post.postImage!);
    }

    final ParseResponse editPostResponse;
    try {
      editPostResponse = await post.save();
    } catch (e) {
      throw const NoConnectionException('can not edit the post');
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
      await _deleteImage(post.objectId!);
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

  /// Save the new post image if the user set new post image.
  ///
  /// Throws [ServerException] in case of connection error or parse error.
  Future<void> _saveNewPostImage(ParseFile postImage) async {
    final ParseResponse saveImageResponse;
    try {
      saveImageResponse = await postImage.save();
    } catch (e) {
      throw const NoConnectionException('can not save the new image');
    }
    if (!saveImageResponse.success) {
      throw ParseException.extractParseException(saveImageResponse.error);
    }
  }

  /// Delete the old post image if the user delete or replace the current post image
  ///
  /// Throws [ServerException] in case of connection error or parse error.
  Future<void> _deleteOldImageIfPostImageChanged(
      ParseFile? oldServiceImage, ParseFile? postImage, String postId) async {
    if (oldServiceImage != null && _isPostImageChanged(postImage)) {
      await _deleteImage(postId);
    }
  }

  bool _isPostImageChanged(ParseFile? postImage) {
    if (postImage == null) {
      return true;
    } else {
      if (!postImage.saved) {
        return true;
      }
    }
    return false;
  }

  /// Delete post image
  ///
  /// Throws [ServerException] in case of connection error or parse error.
  Future<void> _deleteImage(String postId) async {
    final _deletePostImageCloudFunction = ParseCloudFunction('deletePostImage');
    final ParseResponse deletePostImageCloudResponse;
    try {
      deletePostImageCloudResponse = await _deletePostImageCloudFunction
          .execute(parameters: {'postId': postId});
    } catch (e) {
      throw const NoConnectionException('can not delete the image');
    }
    if (!deletePostImageCloudResponse.success) {
      throw ParseException.extractParseException(
          deletePostImageCloudResponse.error);
    }
  }
}
