import 'package:dartz/dartz.dart';
import 'package:doors/core/auth/data/auth_local_data_source.dart';
import 'package:doors/core/auth/data/auth_remote_data_source.dart';
import 'package:doors/core/auth/model/user.dart';
import 'package:doors/core/errors/parse_exception.dart';

class AuthRepository {
  final AuthRemoteDataSource _authRemoteDataSource;
  final AuthLocalDataSource _authLocalDataSource;

  const AuthRepository(this._authRemoteDataSource, this._authLocalDataSource);

  /// SignUp a new user to parse.
  ///
  /// NOTE: [user] contains all the user info and all the Parse User
  /// Managements capabilities.
  ///
  /// Returns Either [ParseException] or [User] object.
  Future<Either<ParseException, User>> signUp(User user) async {
    try {
      return Right(await _authRemoteDataSource.signUp(user));
    } on ParseException catch (e) {
      return Left(e);
    }
  }

  /// Login a user to parse.
  ///
  ///NOTE: [user] contains all the user info and all the Parse User
  /// Managements capabilities.
  ///
  /// Returns Either [ParseException] or [User] object.
  Future<Either<ParseException, User>> login(User user) async {
    try {
      return Right(await _authRemoteDataSource.login(user));
    } on ParseException catch (e) {
      return Left(e);
    }
  }

  /// Get a new updated version of user profile data.
  ///
  /// parseSDK will automatically update the local user date.
  ///
  /// Returns Either [ParseException] or [User] object.
  Future<Either<ParseException, User>> getCurrentUpdatedUserFromServer() async {
    try {
      return Right(await _authRemoteDataSource
          .getCurrentUpdatedUserFromServer((await getCurrentLoggedUser())!));
    } on ParseException catch (e) {
      return Left(e);
    }
  }

  /// Send verification email to the current user.
  ///
  /// The email will not be sent if the user already verified his email address
  ///
  /// Throws [ParseException].
  Future<Either<ParseException, void>> sendVerificationEmail() async {
    try {
      return Right(await _authRemoteDataSource
          .sendVerificationEmail((await getCurrentLoggedUser())!));
    } on ParseException catch (e) {
      return Left(e);
    }
  }

  /// Send password reset request email to [currentUser].
  ///
  /// Returns Either [ParseException] or void as a mark of success.
  Future<Either<ParseException, void>> sendPasswordReset() async {
    try {
      return Right(await _authRemoteDataSource
          .sendPasswordReset((await getCurrentLoggedUser())!));
    } on ParseException catch (e) {
      return Left(e);
    }
  }
/* TODO: should be in user profile feature!!
  /// Update the current user with new data.
  ///
  /// parseSDK will automatically update the local user data.
  ///
  /// Returns Either [ParseException] or [User] object.
  Future<Either<ParseException, User>> updateCurrentUserData(
      User currentUserWithUpdatedDate) async {
    try {
      return Right(await _authRemoteDataSource
          .updateCurrentUserData(currentUserWithUpdatedDate));
    } on ParseException catch (e) {
      return Left(e);
    }
  }
*/
  /// Login as anonymous user. Its like a normal user excepts that the [User] object
  /// returns from this call will not have email nor password.
  ///
  /// To Check if a [User] objet is a anonymous or not use [User.isAnonymousUser].
  ///
  /// Returns Either [ParseException] or [User] object.
  Future<Either<ParseException, User>> loginAnonymously() async {
    try {
      return Right(await _authRemoteDataSource.loginAnonymously());
    } on ParseException catch (e) {
      return Left(e);
    }
  }

  /// Get the current local user info and data
  ///
  /// Returns null in case no (login | signUp | login As Anonymous) preformed or
  /// the user logout.
  Future<User?> getCurrentLoggedUser() async {
    return await _authLocalDataSource.getCurrentLoggedUser();
  }

  /// Logout the current user.
  ///
  /// Returns Either [ParseException] or void as a mark of success.
  Future<Either<ParseException, void>> logout() async {
    try {
      return Right(
          await _authRemoteDataSource.logout((await getCurrentLoggedUser())!));
    } on ParseException catch (e) {
      return Left(e);
    }
  }
}
