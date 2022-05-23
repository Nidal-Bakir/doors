import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/models/user.dart';
import 'package:mocktail/mocktail.dart';

class MockUser extends Mock implements User {}

void setUpBasicLoggedUserForTest(MockUser mockUser) {
  reset(mockUser);
  when(
    () => mockUser.username,
  ).thenReturn('test@gmail.com');
  when(
    () => mockUser.emailAddress,
  ).thenReturn('test@gmail.com');
  when(
    () => mockUser.password,
  ).thenReturn('abc123');
  when(
    () => mockUser.name,
  ).thenReturn('test Nmae');
  when(
    () => mockUser.accountType,
  ).thenReturn(AccountType.company);
  when(
    () => mockUser.accountStatues,
  ).thenReturn(AccountStatues.active);
  when(
    () => mockUser.isAnonymousAccount,
  ).thenReturn(false);
}

void setUpAnonymousUserForTest(MockUser mockUser) {
  reset(mockUser);
  when(
    () => mockUser.username,
  ).thenReturn('AnonymousUser');

  when(
    () => mockUser.isAnonymousAccount,
  ).thenReturn(true);
}
