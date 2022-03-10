part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authLoginRequested(User user) = AuthLoginRequested;
  const factory AuthEvent.authSignUpRequested(User user) = AuthSignUpRequested;
  const factory AuthEvent.authLoginAnonymouslyRequested() =
      AuthLoginAnonymouslyRequested;
  const factory AuthEvent.authLogoutRequested() = AuthLogoutRequested;
  const factory AuthEvent.authUpdatedUserDataRequested() = AuthUpdatedUserDataRequested;

}
