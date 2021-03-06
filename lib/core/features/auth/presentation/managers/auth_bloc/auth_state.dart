part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.authInitial() = AuthInitial;

  const factory AuthState.authInProgress() = AuthInProgress;

  const factory AuthState.authCurrentUserLoadSuccess(User user) =
      AuthCurrentUserLoadSuccess;
  const factory AuthState.authCurrentUpdatedUserLoadSuccess(User user) =
      AuthCurrentUpdatedUserLoadSuccess;

  const factory AuthState.authLoggedInSuccess(User user) = AuthLoggedInSuccess;

  const factory AuthState.authSignUpSuccess(User user) = AuthSignUpSuccess;

  const factory AuthState.authLogoutSuccess() = AuthLogoutSuccess;

  const factory AuthState.authPasswordResetSendSuccess() =
      AuthPasswordResetSendSuccess;

  const factory AuthState.authLoadFailure(ExceptionBase exception) =
      AuthLoadFailure;
}
