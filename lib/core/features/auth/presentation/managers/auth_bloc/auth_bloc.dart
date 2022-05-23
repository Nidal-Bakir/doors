import 'package:bloc/bloc.dart';
import 'package:doors/core/errors/exception_base.dart';
import 'package:doors/core/errors/security_exception_flow.dart';
import 'package:doors/core/errors/server_error.dart';
import 'package:doors/core/models/user.dart';
import 'package:doors/core/features/auth/repository/auth_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final SecurityExceptionFlow _securityErrorFlow;
  final AuthRepository _authRepository;

  AuthBloc(this._authRepository, this._securityErrorFlow)
      : super(const AuthInitial()) {
    on<AuthEvent>(
      (event, emit) async {
        await event.map<Future<void>>(
            authLoginRequested: (event) async =>
                await _onAuthLoginRequested(event, emit),
            authSignUpRequested: (event) async =>
                await _onAuthSignUpRequested(event, emit),
            authLoginAnonymouslyRequested: (event) async =>
                await _onAuthLoginAnonymouslyRequested(event, emit),
            authLogoutRequested: (event) async =>
                await _onAuthLogoutRequestedRequested(event, emit),
            authGetUpdatedUserDataRequested: (event) async =>
                await _onAuthGetUpdatedUserDataRequested(event, emit),
            authCurrentUserLoaded: (event) async =>
                await _onAuthCurrentUserLoaded(event, emit),
            authResetPasswordRequested: (event) async =>
                await _onAuthResetPasswordRequested(event, emit),
            authCurrentAccountSuspended: (event) async =>
                await _onAuthCurrentAccountSuspended(event, emit));
      },
    );

    _securityErrorFlow.securityErrorFlowStream().listen((error) async {
      if (error is ParseInvalidSessionToken || error is ParseSessionMissing) {
        add(const AuthLogoutRequested());
      } else if (error is SuspendedAccount) {
        add(AuthCurrentAccountSuspended(error));
      }
    });
  }

  User? _currentPopulatedUser;

  /// Returns the current populated user by auth bloc
  User? getCurrentUser() => _currentPopulatedUser;

  Future<void> _onAuthLoginRequested(
      AuthLoginRequested authLoginRequested, Emitter<AuthState> emit) async {
    emit(const AuthInProgress());
    final loggedUser = await _authRepository.login(authLoginRequested.user);

    loggedUser.fold((error) => emit(AuthLoadFailure(error)), (user) {
      _currentPopulatedUser = user;
      emit(AuthLoggedInSuccess(user));
    });
  }

  Future<void> _onAuthSignUpRequested(
      AuthSignUpRequested authSignUpRequested, Emitter<AuthState> emit) async {
    emit(const AuthInProgress());
    final signUpUser = await _authRepository.signUp(authSignUpRequested.user);

    signUpUser.fold((error) => emit(AuthLoadFailure(error)), (user) {
      _currentPopulatedUser = user;
      emit(AuthSignUpSuccess(user));
    });
  }

  Future<void> _onAuthLoginAnonymouslyRequested(
      AuthLoginAnonymouslyRequested anonymouslyRequested,
      Emitter<AuthState> emit) async {
    emit(const AuthInProgress());

    final anonymousUser = await _authRepository.loginAnonymously();
    anonymousUser.fold((error) => emit(AuthLoadFailure(error)), (user) {
      _currentPopulatedUser = user;
      emit(AuthCurrentUserLoadSuccess(user));
    });
    add(const AuthGetUpdatedUserDataRequested());
  }

  Future<void> _onAuthGetUpdatedUserDataRequested(
      AuthGetUpdatedUserDataRequested authUpdatedUserDataRequested,
      Emitter<AuthState> emit) async {
    emit(const AuthInProgress());

    final updatedUser = await _authRepository.getCurrentUpdatedUserFromServer();
    updatedUser.fold((error) => emit(AuthLoadFailure(error)), (user) {
      _currentPopulatedUser = user;
      emit(AuthCurrentUpdatedUserLoadSuccess(user));
    });
  }

  Future<void> _onAuthLogoutRequestedRequested(
      AuthLogoutRequested authLogoutRequested, Emitter<AuthState> emit) async {
    emit(const AuthInProgress());

    final logoutState = await _authRepository.logout();
    logoutState.fold((error) => emit(AuthLoadFailure(error)), (_) {
      _currentPopulatedUser = null;
      emit(const AuthLogoutSuccess());
    });
  }

  Future<void> _onAuthCurrentUserLoaded(
      AuthCurrentUserLoaded event, Emitter<AuthState> emit) async {
    emit(const AuthInProgress());

    final currentUser = await _authRepository.getCurrentLoggedUser();
    if (currentUser != null) {
      _currentPopulatedUser = currentUser;
      emit(AuthCurrentUserLoadSuccess(currentUser));
      // get the updated user date form the server
      add(const AuthGetUpdatedUserDataRequested());
    } else {
      add(const AuthLoginAnonymouslyRequested());
    }
  }

  Future<void> _onAuthResetPasswordRequested(
      AuthResetPasswordRequested event, Emitter<AuthState> emit) async {
    emit(const AuthInProgress());

    final sendResetState =
        await _authRepository.sendPasswordReset(userEmail: event.userEmail);
    sendResetState.fold((error) => emit(AuthLoadFailure(error)),
        (_) => emit(const AuthPasswordResetSendSuccess()));
  }

  Future<void> _onAuthCurrentAccountSuspended(
      AuthCurrentAccountSuspended event, Emitter<AuthState> emit) async {
    _currentPopulatedUser = null;
    // if it is a logged user then we need to log him out
    if (await _isItALoggedUserInTheApp()) {
      add(const AuthLogoutRequested());
    } else {
      // it is not logged user, so the user is trying to login, show suspended screen
      emit(AuthLoadFailure(event.suspendedAccountException));
    }
  }

  Future<bool> _isItALoggedUserInTheApp() async {
    final _currentUser = await _authRepository.getCurrentLoggedUser();
    return _currentUser != null && !_currentUser.isAnonymousAccount;
  }
}
