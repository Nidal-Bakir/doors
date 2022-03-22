import 'package:bloc/bloc.dart';
import 'package:doors/core/features/auth/model/user.dart';
import 'package:doors/core/features/auth/repository/auth_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepositoryFactory _authRepositoryFactory;
  late final AuthRepository _authRepository;

  AuthBloc(this._authRepositoryFactory) : super(const AuthInitial()) {
    _authRepositoryFactory
        .getAuthRepository()
        .then((value) => _authRepository = value);

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
                await _onAuthResetPasswordRequested(event, emit));
      },
    );
  }

  Future<void> _onAuthLoginRequested(
      AuthLoginRequested authLoginRequested, Emitter<AuthState> emit) async {
    emit(const AuthInProgress());
    final loggedUser = await _authRepository.login(authLoginRequested.user);

    loggedUser.fold((error) => emit(AuthLoadFailure(error)),
        (user) => emit(AuthLoggedInSuccess(user)));
  }

  Future<void> _onAuthSignUpRequested(
      AuthSignUpRequested authSignUpRequested, Emitter<AuthState> emit) async {
    emit(const AuthInProgress());
    final signUpUser = await _authRepository.signUp(authSignUpRequested.user);

    signUpUser.fold((error) => emit(AuthLoadFailure(error)),
        (user) => emit(AuthLoggedInSuccess(user)));
  }

  Future<void> _onAuthLoginAnonymouslyRequested(
      AuthLoginAnonymouslyRequested anonymouslyRequested,
      Emitter<AuthState> emit) async {
    emit(const AuthInProgress());

    final anonymousUser = await _authRepository.loginAnonymously();
    anonymousUser.fold((error) => emit(AuthLoadFailure(error)),
        (user) => emit(AuthCurrentUserLoadSuccess(user)));
  }

  Future<void> _onAuthGetUpdatedUserDataRequested(
      AuthGetUpdatedUserDataRequested authUpdatedUserDataRequested,
      Emitter<AuthState> emit) async {
    emit(const AuthInProgress());

    final updatedUser = await _authRepository.getCurrentUpdatedUserFromServer();
    updatedUser.fold((error) => emit(AuthLoadFailure(error)),
        (user) => emit(AuthCurrentUserLoadSuccess(user)));
  }

  Future<void> _onAuthLogoutRequestedRequested(
      AuthLogoutRequested authLogoutRequested, Emitter<AuthState> emit) async {
    emit(const AuthInProgress());

    final logoutState = await _authRepository.logout();
    logoutState.fold((error) => emit(AuthLoadFailure(error)),
        (_) => emit(const AuthLogoutSuccess()));
  }

  Future<void> _onAuthCurrentUserLoaded(
      AuthCurrentUserLoaded event, Emitter<AuthState> emit) async {
    emit(const AuthInProgress());

    final currentUser = await _authRepository.getCurrentLoggedUser();
    if (currentUser != null) {
      emit(AuthCurrentUserLoadSuccess(currentUser));
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
}
