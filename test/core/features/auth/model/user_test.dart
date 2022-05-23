import 'package:doors/core/enums/enums.dart';
import 'package:doors/core/models/user.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockUser extends Mock implements User {}

void main() {
  final mockUser = MockUser();
  group('user_model: company test group', () {
    setUp(() {
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
      ).thenReturn(mockUser.emailAddress == null ||
          mockUser.username != mockUser.emailAddress);
    });

    test('should isAnonymousAccount returns false for company account', () {
      // act
      final isAnonymousAccount = mockUser.isAnonymousAccount;

      // assert
      expect(isAnonymousAccount, isFalse);
    });
  });

  group('user_model: user test group', () {
    setUp(() {
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
      ).thenReturn(AccountType.user);
      when(
        () => mockUser.accountStatues,
      ).thenReturn(AccountStatues.active);
      when(
        () => mockUser.isAnonymousAccount,
      ).thenReturn(mockUser.emailAddress == null ||
          mockUser.username != mockUser.emailAddress);
    });

    test('should isAnonymousAccount returns false for user account', () {
      // act
      final isAnonymousAccount = mockUser.isAnonymousAccount;

      // assert
      expect(isAnonymousAccount, isFalse);
    });
  });

  group('user_model: anonymous test group', () {
    setUp(() {
      reset(mockUser);

      when(
        () => mockUser.username,
      ).thenReturn('anythings');
      when(
        () => mockUser.isAnonymousAccount,
      ).thenReturn(mockUser.emailAddress == null ||
          mockUser.username != mockUser.emailAddress);
    });

    test('should isAnonymousAccount returns true for anonymous account', () {
      // act
      final isAnonymousAccount = mockUser.isAnonymousAccount;

      // assert
      expect(isAnonymousAccount, isTrue);
    });
  });
}
