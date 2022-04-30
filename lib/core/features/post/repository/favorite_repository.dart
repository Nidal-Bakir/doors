import 'package:dartz/dartz.dart';
import 'package:doors/core/errors/exception_base.dart';
import 'package:doors/core/errors/server_error.dart';
import 'package:doors/core/features/post/data/favorite_post_remote_data_source.dart';
import 'package:doors/core/features/post/model/post.dart';

class FavoriteRepository {
  final FavoritePostRemoteDataSource _favoritePostRemoteDataSource;

  FavoriteRepository(this._favoritePostRemoteDataSource);

  /// Add a [post] to the favorite posts list for the current user.
  ///
  /// Returns either [void] to indicate that the adding operation was successful.
  /// 
  /// OR [ExceptionBase] :
  /// * [ServerException] in case of connection error or parse error.
  /// * [AnonymousException] if the user is Anonymous user
  Future<Either<ExceptionBase, void>> addPostToUserFavoriteList(
    Post post,
  ) async {
    try {
      return Right(
          await _favoritePostRemoteDataSource.addPostToUserFavoriteList(post));
    } on ExceptionBase catch (e) {
      return Left(e);
    }
  }

  /// Remove a [favoritePost] from the favorite posts list for the current user.
  /// 
  /// Returns either [void] to indicate that the remove operation was successful.
  /// 
  /// OR [ExceptionBase] :
  /// * [ServerException] in case of connection error or parse error.
  /// * [AnonymousException] if the user is Anonymous user
  Future<Either<ExceptionBase, void>> removePostFromUserFavoriteList(
      Post favoritePost) async {
    try {
      return Right(await _favoritePostRemoteDataSource
          .removePostFromUserFavoriteList(favoritePost));
    } on ExceptionBase catch (e) {
      return Left(e);
    }
  }

  /// Check if the [post] was added to the current user favorite list or not.
  ///
  /// Returns either [ServerException] or true if the post was added to user favorite list,
  /// false otherwise.
  Future<Either<ExceptionBase, bool>> isFavoritePost(Post post) async {
    try {
      return Right(await _favoritePostRemoteDataSource.isFavoritePost(post));
    } on ExceptionBase catch (e) {
      return Left(e);
    }
  }
}
