part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.authInitial() = AuthInitial;

  const factory AuthState.authInProgress() = AuthInProgress;

  const factory AuthState.authCurrentLoadSuccess(User user) = AuthCurrentLoadSuccess;

  const factory AuthState.authLoggedInSuccess(User user) = AuthLoggedInSuccess;
  const factory AuthState.authLogoutSuccess() = AuthLogoutSuccess;

  const factory AuthState.authLoadFailure(Exception exception) =
      AuthLoadFailure;
}