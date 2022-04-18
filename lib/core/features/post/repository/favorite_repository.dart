import 'package:dartz/dartz.dart';
import 'package:doors/core/errors/server_error.dart';
import 'package:doors/core/features/post/data/favorite_post_remote_data_source.dart';
import 'package:doors/core/features/post/model/post.dart';

class FavoriteRepository {
  final FavoritePostRemoteDataSource _favoritePostRemoteDataSource;

  FavoriteRepository(this._favoritePostRemoteDataSource);

  /// Add a [post] to the favorite posts list for the current user.
  ///
  /// Returns either [ServerException] or void to indicate that the adding operation was successful.
  Future<Either<ServerException, void>> addPostToUserFavoriteList(
      Post post) async {
    try {
      return Right(
          await _favoritePostRemoteDataSource.addPostToUserFavoriteList(post));
    } on ServerException catch (e) {
      return Left(e);
    }
  }

  /// Remove a [favoritePost] from the favorite posts list for the current user.
  ///
  /// Returns either [ServerException] or void to indicate that the remove operation was successful.
  Future<Either<ServerException, void>> removePostFromUserFavoriteList(
      Post favoritePost) async {
    try {
      return Right(await _favoritePostRemoteDataSource
          .removePostFromUserFavoriteList(favoritePost));
    } on ServerException catch (e) {
      return Left(e);
    }
  }

  /// Check if the [post] was added to the current user favorite list or not.
  ///
  /// Returns either [ServerException] or true if the post was added to user favorite list,
  /// false otherwise.
  Future<Either<ServerException, bool>> isFavoritePost(Post post) async {
    try {
      return Right(await _favoritePostRemoteDataSource.isFavoritePost(post));
    } on ServerException catch (e) {
      return Left(e);
    }
  }
}
