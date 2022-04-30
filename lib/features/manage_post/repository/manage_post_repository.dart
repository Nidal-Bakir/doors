import 'package:dartz/dartz.dart';
import 'package:doors/core/errors/exception_base.dart';
import 'package:doors/core/features/post/model/post.dart';
import 'package:doors/features/manage_post/data/create_post_remote_data_source/manage_post_remote_data_source.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

class ManagePostsRepository {
  final ManagePostRemoteDataSource _managePostRemoteDataSource;

  ManagePostsRepository(this._managePostRemoteDataSource);

  /// Create new [post] for the user.
  ///
  /// Returns either [void] to indicate that the creation operation was successful
  /// OR [ExceptionBase] :
  /// * [ServerException] in case of connection error or parse error.
  /// * [AnonymousException] if the user is Anonymous user
  Future<Either<ExceptionBase, void>> createPost(Post post) async {
    assert(post.objectId == null);
    try {
      return Right(await _managePostRemoteDataSource.createPost(post));
    } on ExceptionBase catch (error) {
      return Left(error);
    }
  }

  /// Edit existing [post] for the user.
  ///
  /// Returns either [void] to indicate that the editing operation was successful.
  ///
  /// OR [ExceptionBase] :
  /// * [ServerException] in case of connection error or parse error.
  /// * [AnonymousException] if the user is Anonymous user
  /// * [ForbiddenOperation] if the user is trying to edit other users posts,
  ///  that should not happened, but just in case!
  Future<Either<ExceptionBase, void>> editPost(
      Post post, ParseFile? oldPostImage) async {
    assert(post.objectId != null);
    try {
      return Right(
          await _managePostRemoteDataSource.editPost(post, oldPostImage));
    } on ExceptionBase catch (error) {
      return Left(error);
    }
  }

  /// Delete existing [post] owned by the current user.
  ///
  /// Returns either [void] to indicate that the delete operation was successful.
  ///
  /// OR [ExceptionBase] :
  /// * [ServerException] in case of connection error or parse error.
  /// * [AnonymousException] if the user is Anonymous user
  /// * [ForbiddenOperation] if the user is trying to delete other users posts,
  ///  that should not happened, but just in case!
  Future<Either<ExceptionBase, void>> deletePost(Post post) async {
    assert(post.objectId != null);
    try {
      return Right(await _managePostRemoteDataSource.deletePost(post));
    } on ExceptionBase catch (error) {
      return Left(error);
    }
  }
}
