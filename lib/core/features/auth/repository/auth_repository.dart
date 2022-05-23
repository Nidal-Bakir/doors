import 'package:dartz/dartz.dart';
import 'package:doors/core/errors/exception_base.dart';
import 'package:doors/core/errors/server_error.dart';
import 'package:doors/core/errors/user_error.dart';
import 'package:doors/core/features/auth/data/auth_data_source/auth_local_data_source.dart';
import 'package:doors/core/features/auth/data/auth_data_source/auth_remote_data_source.dart';
import 'package:doors/core/models/user.dart';

class AuthRepository {
  final AuthRemoteDataSource _authRemoteDataSource;
  final AuthLocalDataSource _authLocalDataSource;

  AuthRepository(this._authRemoteDataSource, this._authLocalDataSource);

  /// Get a new updated version of user profile data.
  ///
  /// parseSDK will automatically update the local user date.
  ///
  /// Returns Either [ServerException] OR [User] object.
  Future<Either<ServerException, User>>
      getCurrentUpdatedUserFromServer() async {
    try {
      return Right(await _authRemoteDataSource
          .getCurrentUpdatedUserFromServer((await getCurrentLoggedUser())!));
    } on ServerException catch (e) {
      return Left(e);
    }
  }

  /// Send verification email to the current user.
  ///
  /// The email will not be sent if the user already verified his email address
  ///
  /// Returns Either [ExceptionBase] ([ServerException] || [UserException]) OR  void as a mark of success.
  Future<Either<ExceptionBase, void>> sendVerificationEmail() async {
    try {
      return Right(await _authRemoteDataSource
          .sendVerificationEmail((await getCurrentLoggedUser())!));
    } on ParseException catch (e) {
      return Left(e);
    }
  }

  /// Send email to reset account password
  ///
  /// Returns Either [ServerException] OR  void as a mark of success.
  Future<Either<ServerException, void>> sendPasswordReset(
      {required String userEmail}) async {
    final _currentSessionToken =
        (await getCurrentLoggedUser())?.sessionToken ?? '';
    try {
      return Right(
        await _authRemoteDataSource.sendPasswordReset(User(
          userEmail,
          null,
          userEmail,
          sessionToken: _currentSessionToken,
        )),
      );
    } on ServerException catch (e) {
      return Left(e);
    }
  }

  /// Logout the current logged-in user.
  ///
  /// Returns Either [ExceptionBase] ([ServerException] || [UserAlreadyLoggedOutException])
  /// OR void as a mark of success.
  Future<Either<ExceptionBase, void>> logout() async {
    final currentUser = await getCurrentLoggedUser();
    if (currentUser == null) {
      return const Left(UserAlreadyLoggedOutException());
    }
    try {
      return Right(await _authRemoteDataSource.logout(currentUser));
    } on ParseException catch (e) {
      return Left(e);
    }
  }

  /// SignUp a new user to parse.
  ///
  /// NOTE: [user] contains all the user info and all the Parse User
  /// Managements capabilities.
  ///
  /// Returns Either [ServerException] or [User] object.
  Future<Either<ServerException, User>> signUp(User user) async {
    try {
      return Right(await _authRemoteDataSource.signUp(user));
    } on ServerException catch (e) {
      return Left(e);
    }
  }

  /// Login a user to parse.
  ///
  ///NOTE: [user] contains all the user info and all the Parse User
  /// Managements capabilities.
  ///
  /// Returns Either [ServerException] or [User] object.
  Future<Either<ServerException, User>> login(User user) async {
    try {
      return Right(await _authRemoteDataSource.login(user));
    } on ServerException catch (e) {
      return Left(e);
    }
  }

  /// Login as anonymous user. Its like a normal user excepts that the [User] object
  /// returns from this call will not have email nor password.
  ///
  /// To Check if a [User] objet is a anonymous or not use [User.isAnonymousAccount].
  ///
  /// Returns Either [ServerException] or [User] object.
  Future<Either<ServerException, User>> loginAnonymously() async {
    try {
      return Right(await _authRemoteDataSource.loginAnonymously());
    } on ServerException catch (e) {
      return Left(e);
    }
  }

  /// Get the current local user info and data
  ///
  /// Returns null in case no (login | signUp| loginAnonymously) preformed.
  Future<User?> getCurrentLoggedUser() async {
    return await _authLocalDataSource.getCurrentLoggedUser();
  }
}
