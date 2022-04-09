part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.authLoginRequested(User user) = AuthLoginRequested;
  const factory AuthEvent.authSignUpRequested(User user) = AuthSignUpRequested;

  const factory AuthEvent.authCurrentAccountSuspended(SuspendedAccount suspendedAccountException) = AuthCurrentAccountSuspended;

  const factory AuthEvent.authLoginAnonymouslyRequested() =
      AuthLoginAnonymouslyRequested;
  const factory AuthEvent.authLogoutRequested() = AuthLogoutRequested;

  /// Get update user profile date from server
  const factory AuthEvent.authGetUpdatedUserDataRequested() =
      AuthGetUpdatedUserDataRequested;

  /// Load the current user form local cache. If no user found this event will
  /// add new event to auth bloc to create anonymous user [AuthLoginAnonymouslyRequested]
  const factory AuthEvent.authCurrentUserLoaded() = AuthCurrentUserLoaded;

  /// Send email to reset account password
  const factory AuthEvent.authResetPasswordRequested({required String  userEmail}) =
      AuthResetPasswordRequested;
}
