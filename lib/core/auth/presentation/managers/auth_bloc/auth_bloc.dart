import 'package:bloc/bloc.dart';
import 'package:doors/core/auth/model/user.dart';
import 'package:doors/core/auth/repository/auth_repository.dart';
import 'package:doors/core/errors/parse_exception.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_bloc.freezed.dart';
part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepository _authRepository;
  AuthBloc(this._authRepository) : super(const AuthInitial()) {
    on<AuthLoginRequested>(_onAuthLoginRequested);
    on<AuthSignUpRequested>(_onAuthSignUpRequested);
    on<AuthLoginAnonymouslyRequested>(_onAuthLoginAnonymouslyRequested);
    on<AuthUpdatedUserDataRequested>(_onAAuthUpdatedUserDataRequested);

    _authRepository.getCurrentLoggedUser().then((currentUser) {
      if (currentUser == null) {
        add(const AuthLoginAnonymouslyRequested());
      }
    });
  }
  void _onAuthLoginRequested(
      AuthLoginRequested authLoginRequested, Emitter<AuthState> emit) async {
    emit(const AuthInProgress());
    final loggedUser = await _authRepository.login(authLoginRequested.user);

    loggedUser.fold((error) => emit(AuthLoadFailure(error)),
        (user) => emit(AuthLoadSuccess(user)));
  }

  void _onAuthSignUpRequested(
      AuthSignUpRequested authSignUpRequested, Emitter<AuthState> emit) async {
    emit(const AuthInProgress());
    final signUpUser = await _authRepository.signUp(authSignUpRequested.user);

    signUpUser.fold((error) => emit(AuthLoadFailure(error)),
        (user) => emit(AuthLoadSuccess(user)));
  }

  void _onAuthLoginAnonymouslyRequested(
      AuthLoginAnonymouslyRequested anonymouslyRequested,
      Emitter<AuthState> emit) async {
    emit(const AuthInProgress());

    final anonymousUser = await _authRepository.loginAnonymously();
    anonymousUser.fold((error) => emit(AuthLoadFailure(error)),
        (user) => emit(AuthLoadSuccess(user)));
  }

  void _onAAuthUpdatedUserDataRequested(
      AuthUpdatedUserDataRequested authUpdatedUserDataRequested,
      Emitter<AuthState> emit) async {
    emit(const AuthInProgress());

    final updatedUser = await _authRepository.getCurrentUpdatedUserFromServer();
    updatedUser.fold((error) => emit(AuthLoadFailure(error)),
        (user) => emit(AuthLoadSuccess(user)));
  }
}
