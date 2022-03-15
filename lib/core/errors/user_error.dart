abstract class UserException implements Exception {
  final String message;

  UserException(this.message);
}

/// Throws when an operation required logged-in users and not anonymous one.
class AnonymousException extends UserException {
  AnonymousException(String message) : super(message);
}

class UserAlreadyLoggedOutException extends UserException {
  UserAlreadyLoggedOutException() : super('User already loggedOut');
}