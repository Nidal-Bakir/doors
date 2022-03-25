
import 'package:dartz/dartz.dart';
import 'package:doors/core/errors/exception_base.dart';
import 'package:doors/core/errors/server_error.dart';
import 'package:doors/core/errors/user_error.dart';
import 'package:doors/core/features/auth/data/auth_local_data_source.dart';
import 'package:doors/core/features/auth/data/auth_remote_data_source.dart';
import 'package:doors/core/features/auth/model/user.dart';

typedef LoggedInAuthRepositoryForTest = _LoggedInAuthRepository;
typedef AnonymousAuthRepositoryForTest = _AnonymousAuthRepository;

abstract class AuthRepository {
  final AuthRemoteDataSource _authRemoteDataSource;
  final AuthLocalDataSource _authLocalDataSource;

  AuthRepository(this._authRemoteDataSource, this._authLocalDataSource);

  /// Get a new updated version of user profile data.
  ///
  /// parseSDK will automatically update the local user date.
  ///
  /// Returns Either [ExceptionBase] ([ParseException] || [UserException]) OR [User] object.
  Future<Either<ExceptionBase, User>> getCurrentUpdatedUserFromServer();

  /// Send verification email to the current user.
  ///
  /// The email will not be sent if the user already verified his email address
  ///
  /// Returns Either [ExceptionBase] ([ParseException] || [UserException]) OR  void as a mark of success.
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
  /// Returns Either [ParseException] OR  void as a mark of success.
  Future<Either<ParseException, void>> sendPasswordReset(
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
    } on ParseException catch (e) {
      return Left(e);
    }
  }

  /// Logout the current logged-in user.
  ///
  /// Returns Either [ExceptionBase] ([ParseException] || [UserAlreadyLoggedOutException]
  /// || [AnonymousException]) OR void as a mark of success.
  Future<Either<ExceptionBase, void>> logout();

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
  /// To Check if a [User] objet is a anonymous or not use [User.isAnonymousAccount].
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
  /// Returns null in case no (login | signUp) preformed.
  Future<User?> getCurrentLoggedUser() async {
    return await _authLocalDataSource.getCurrentLoggedUser();
  }
}

class _AnonymousAuthRepository extends AuthRepository {
  _AnonymousAuthRepository(AuthRemoteDataSource _authRemoteDataSource,
      AuthLocalDataSource _authLocalDataSource)
      : super(_authRemoteDataSource, _authLocalDataSource);

  @override
  Future<Either<UserException, User>> getCurrentUpdatedUserFromServer() async {
    return const Left(
      AnonymousException(
          'Anonymous user can not do getCurrentUpdatedUserFromServer operation.'),
    );
  }

  @override
  Future<Either<ExceptionBase, void>> logout() async {
    return const Left(
      AnonymousException('Anonymous user can not do logout operation.'),
    );
  }
}

class _LoggedInAuthRepository extends AuthRepository {
  _LoggedInAuthRepository(AuthRemoteDataSource _authRemoteDataSource,
      AuthLocalDataSource _authLocalDataSource)
      : super(_authRemoteDataSource, _authLocalDataSource);

  @override
  Future<Either<ParseException, User>> getCurrentUpdatedUserFromServer() async {
    try {
      return Right(await _authRemoteDataSource
          .getCurrentUpdatedUserFromServer((await getCurrentLoggedUser())!));
    } on ParseException catch (e) {
      return Left(e);
    }
  }

  @override
  Future<Either<ExceptionBase, void>> logout() async {
    final currentUser = await getCurrentLoggedUser();
    if (currentUser == null) {
      return const Left( UserAlreadyLoggedOutException());
    }
    try {
      return Right(await _authRemoteDataSource.logout(currentUser));
    } on ParseException catch (e) {
      return Left(e);
    }
  }
}

class AuthRepositoryFactory {
  final AuthRemoteDataSource _authRemoteDataSource;
  final AuthLocalDataSource _authLocalDataSource;

  AuthRepositoryFactory(this._authRemoteDataSource, this._authLocalDataSource);

  Future<AuthRepository> getAuthRepository() async {
    final currentUser = await _authLocalDataSource.getCurrentLoggedUser();
    if (currentUser == null || currentUser.isAnonymousAccount) {
      return _AnonymousAuthRepository(
          _authRemoteDataSource, _authLocalDataSource);
    } else {
      return _LoggedInAuthRepository(
          _authRemoteDataSource, _authLocalDataSource);
    }
  }
}
