import 'package:dartz/dartz.dart';
import 'package:doors/core/errors/exception_base.dart';
import 'package:doors/core/errors/server_error.dart';
import 'package:doors/core/errors/user_error.dart';
import 'package:doors/core/features/post/data/user_rate_remote_data_source.dart';
import 'package:doors/core/features/post/model/post_rate.dart';
import 'package:doors/core/models/service_post.dart';

class UserRateRepository {
  final UserRateRemoteDataSource _userRateRemoteDataSource;

  UserRateRepository(this._userRateRemoteDataSource);

  /// Get the user rate on a post.
  ///
  /// Returns Either [PostRate]
  /// OR [ExceptionBase] :
  /// * [ServerException] in case of connection error or parse error.
  /// * [AnonymousException] if the user is Anonymous user
  Future<Either<ExceptionBase, PostRate?>> getUserRateOnPost(ServicePost post) async {
    try {
      return Right(await _userRateRemoteDataSource.getUserRateOnPost(post));
    } on ExceptionBase catch (error) {
      return Left(error);
    }
  }

  /// Set user rate on a post.
  ///
  /// Returns Either [PostRate]
  /// OR [ExceptionBase] :
  /// * [ServerException] in case of connection error or parse error.
  /// * [AnonymousException] if the user is Anonymous user
  Future<Either<ExceptionBase, PostRate>> setUserRateOnPost(
      PostRate postRate) async {
    try {
      return Right(await _userRateRemoteDataSource.setUserRateOnPost(postRate));
    } on ExceptionBase catch (error) {
      return Left(error);
    }
  }

  /// Remove user rate on a post.
  ///
  /// Returns Either [void] indicting that the remove was successful
  /// OR [ExceptionBase] :
  /// * [ServerException] in case of connection error or parse error.
  /// * [AnonymousException] if the user is Anonymous user
  Future<Either<ExceptionBase, void>> removeUserRate(
      PostRate postRateToRemove) async {
    try {
      return Right(
          await _userRateRemoteDataSource.removeUserRate(postRateToRemove));
    } on ExceptionBase catch (error) {
      return Left(error);
    }
  }
}
