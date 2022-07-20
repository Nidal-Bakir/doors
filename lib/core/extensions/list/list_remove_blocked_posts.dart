import 'package:doors/core/models/post.dart';
import 'package:doors/core/models/user.dart';

extension RemoveBlockedUsersPosts<T extends Post> on Iterable<T> {
  Iterable<T> removeBlockedUsersPosts(User currentUser) {
    if (currentUser.isAnonymousAccount) {
      return this;
    }
    return where((post) => !_isBlockPresent(currentUser, post.author));
  }
}

bool _isBlockPresent(User currentUser, User otherUser) {
  return _isCurrentUserBlockedByUser(currentUser, otherUser) ||
      _isBlocked(currentUser, otherUser);
}

bool _isCurrentUserBlockedByUser(User currentUser, User otherUser) =>
    otherUser.getListOfBlockedUsers().contains(currentUser.userId);

bool _isBlocked(User currentUser, User otherUser) =>
    currentUser.getListOfBlockedUsers().contains(otherUser.userId);
