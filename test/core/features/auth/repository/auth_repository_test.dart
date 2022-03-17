import 'package:doors/core/features/auth/data/auth_local_data_source.dart';
import 'package:doors/core/features/auth/data/auth_remote_data_source.dart';
import 'package:doors/core/features/auth/repository/auth_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../test_util/test_util.dart';

class MockAuthRemoteDataSource extends Mock implements AuthRemoteDataSource {}

class MockAuthLocalDataSource extends Mock implements AuthLocalDataSource {}

void main() {
  final MockUser mockUser = MockUser();
  final mockAuthLocalDataSource = MockAuthLocalDataSource();
  final mockAuthRemoteDataSource = MockAuthRemoteDataSource();
  final authFactory =
      AuthRepositoryFactory(mockAuthRemoteDataSource, mockAuthLocalDataSource);
  late AuthRepository authRepository;
  group('auth_repository: AuthRepositoryFactory test group', () {
    setUp(() {
      reset(mockAuthLocalDataSource);
      reset(mockAuthRemoteDataSource);
    });
    test(
        'should getAuthRepository() returns _LoggedInAuthRepository object because the its a logged-in user ',
        () async {
      // arrange
      setUpBasicLoggedUserForTest(mockUser);
      when(mockAuthLocalDataSource.getCurrentLoggedUser)
          .thenAnswer((invocation) async => mockUser);

      // act
      authRepository = await authFactory.getAuthRepository();
      // assert
      expect(authRepository, isA<LoggedInAuthRepositoryForTest>());
    });
    test(
        'should getAuthRepository() returns _AnonymousAuthRepository  object because the its a anonymous user ',
        () async {
      // arrange
      setUpAnonymousUserForTest(mockUser);

      when(mockAuthLocalDataSource.getCurrentLoggedUser)
          .thenAnswer((invocation) async => mockUser);
      // act

      authRepository = await authFactory.getAuthRepository();
      // assert
      expect(authRepository, isA<AnonymousAuthRepositoryForTest>());
    });
    test(
        'should getAuthRepository() returns _AnonymousAuthRepository object because the getCurrentUser returns null ',
        () async {
      // arrange
      when(mockAuthLocalDataSource.getCurrentLoggedUser)
          .thenAnswer((invocation) async => null);
      // act
      authRepository = await authFactory.getAuthRepository();
      // assert
      expect(authRepository, isA<AnonymousAuthRepositoryForTest>());
    });
  });
}
