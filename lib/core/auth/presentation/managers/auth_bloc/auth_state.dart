part of 'auth_bloc.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.authInitial() = AuthInitial;

  const factory AuthState.authInProgress() = AuthInProgress;

  const factory AuthState.authLoadSuccess(User user) = AuthLoadSuccess;

  const factory AuthState.authLoadFailure(ParseException exception) =
      AuthLoadFailure;
}
