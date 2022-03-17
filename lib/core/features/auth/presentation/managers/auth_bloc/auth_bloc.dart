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
      (event, emit) {
        event.map(
            authLoginRequested: (event) => _onAuthLoginRequested(event, emit),
            authSignUpRequested: (event) => _onAuthSignUpRequested(event, emit),
            authLoginAnonymouslyRequested: (event) =>
                _onAuthLoginAnonymouslyRequested(event, emit),
            authLogoutRequested: (event) =>
                _onAuthLogoutRequestedRequested(event, emit),
            authGetUpdatedUserDataRequested: (event) =>
                _onAuthGetUpdatedUserDataRequested(event, emit),
            authCurrentUserLoaded: (event) =>
                _onAuthCurrentUserLoaded(event, emit));
      },
    );
  }

  void _onAuthLoginRequested(
      AuthLoginRequested authLoginRequested, Emitter<AuthState> emit) async {
    emit(const AuthInProgress());
    final loggedUser = await _authRepository.login(authLoginRequested.user);

    loggedUser.fold((error) => emit(AuthLoadFailure(error)),
        (user) => emit(AuthLoggedInSuccess(user)));
  }

  void _onAuthSignUpRequested(
      AuthSignUpRequested authSignUpRequested, Emitter<AuthState> emit) async {
    emit(const AuthInProgress());
    final signUpUser = await _authRepository.signUp(authSignUpRequested.user);

    signUpUser.fold((error) => emit(AuthLoadFailure(error)),
        (user) => emit(AuthLoggedInSuccess(user)));
  }

  void _onAuthLoginAnonymouslyRequested(
      AuthLoginAnonymouslyRequested anonymouslyRequested,
      Emitter<AuthState> emit) async {
    emit(const AuthInProgress());

    final anonymousUser = await _authRepository.loginAnonymously();
    anonymousUser.fold((error) => emit(AuthLoadFailure(error)),
        (user) => emit(AuthCurrentLoadSuccess(user)));
  }

  void _onAuthGetUpdatedUserDataRequested(
      AuthGetUpdatedUserDataRequested authUpdatedUserDataRequested,
      Emitter<AuthState> emit) async {
    emit(const AuthInProgress());

    final updatedUser = await _authRepository.getCurrentUpdatedUserFromServer();
    updatedUser.fold((error) => emit(AuthLoadFailure(error)),
        (user) => emit(AuthCurrentLoadSuccess(user)));
  }

  void _onAuthLogoutRequestedRequested(
      AuthLogoutRequested authLogoutRequested, Emitter<AuthState> emit) async {
    emit(const AuthInProgress());

    final logoutState = await _authRepository.logout();
    logoutState.fold((error) => emit(AuthLoadFailure(error)),
        (_) => emit(const AuthLogoutSuccess()));
  }

  void _onAuthCurrentUserLoaded(
      AuthCurrentUserLoaded event, Emitter<AuthState> emit) async {
    emit(const AuthInProgress());

    final currentUser = await _authRepository.getCurrentLoggedUser();
    if (currentUser == null) {
      add(const AuthLoginAnonymouslyRequested());
      return;
    } else {
      emit(AuthCurrentLoadSuccess(currentUser));
    }
  }
}
