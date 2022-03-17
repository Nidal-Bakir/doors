import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:doors/core/errors/server_error.dart';
import 'package:doors/core/features/auth/presentation/managers/auth_bloc/auth_bloc.dart';
import 'package:doors/core/features/auth/repository/auth_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../../../test_util/test_util.dart';

class MockAuthRepositoryFactory extends Mock implements AuthRepositoryFactory {}

class MockAuthRepository extends Mock implements AuthRepository {}

void main() {
  final mockAuthRepositoryFactory = MockAuthRepositoryFactory();
  final mockAuthRepository = MockAuthRepository();
  final mockUser = MockUser();
  group('authBloc: with LoggedInAuthRepository test group', () {
    setUp(() {
      setUpBasicLoggedUserForTest(mockUser);
      reset(mockAuthRepository);
      reset(mockAuthRepositoryFactory);

      when(() => mockAuthRepositoryFactory.getAuthRepository())
          .thenAnswer((_) async => mockAuthRepository);
      when(() => mockAuthRepository.getCurrentLoggedUser())
          .thenAnswer((_) async => mockUser);
    });

    blocTest<AuthBloc, AuthState>('auth bloc should emit nothing when created.',
        build: () => AuthBloc(mockAuthRepositoryFactory),
        expect: () => [],
        verify: (_) {
          verify(() => mockAuthRepositoryFactory.getAuthRepository()).called(1);
        });
    blocTest<AuthBloc, AuthState>(
        'emits [AuthCurrentLoadSuccess] when AuthCurrentUserLoaded is added if the user logged-in.',
        build: () => AuthBloc(mockAuthRepositoryFactory),
        setUp: () {
          when(() => mockAuthRepository.getCurrentLoggedUser())
              .thenAnswer((_) async => mockUser);
        },
        act: (bloc) => bloc.add(const AuthCurrentUserLoaded()),
        expect: () => <AuthState>[
              const AuthInProgress(),
              AuthCurrentLoadSuccess(mockUser)
            ],
        verify: (_) {
          verify(() => mockAuthRepository.getCurrentLoggedUser()).called(1);
        });

    blocTest<AuthBloc, AuthState>(
        'emits [AuthInProgress,AuthCurrentLoadSuccess] when AuthCurrentUserLoaded is added then the bloc should add [AuthLoginAnonymouslyRequested] because the getCurrentLoggedUser returns null.',
        build: () => AuthBloc(mockAuthRepositoryFactory),
        setUp: () {
          setUpAnonymousUserForTest(mockUser);

          when(() => mockAuthRepository.getCurrentLoggedUser())
              .thenAnswer((_) async => null);
          when(() => mockAuthRepository.loginAnonymously())
              .thenAnswer((_) async => Right(mockUser));
        },
        act: (bloc) => bloc.add(const AuthCurrentUserLoaded()),
        expect: () => <AuthState>[
              const AuthInProgress(),
              AuthCurrentLoadSuccess(mockUser)
            ],
        verify: (_) {
          verify(() => mockAuthRepository.getCurrentLoggedUser()).called(1);
          verify(() => mockAuthRepository.loginAnonymously()).called(1);
        });

    blocTest<AuthBloc, AuthState>(
        'emits [AuthInProgress,AuthCurrentLoadSuccess] when AuthLoginAnonymouslyRequested is added.',
        build: () => AuthBloc(mockAuthRepositoryFactory),
        setUp: () {
          setUpAnonymousUserForTest(mockUser);

          when(() => mockAuthRepository.getCurrentLoggedUser())
              .thenAnswer((_) async => mockUser);
          when(() => mockAuthRepository.loginAnonymously())
              .thenAnswer((_) async => Right(mockUser));
        },
        act: (bloc) => bloc.add(const AuthLoginAnonymouslyRequested()),
        expect: () => <AuthState>[
              const AuthInProgress(),
              AuthCurrentLoadSuccess(mockUser)
            ],
        verify: (_) {
          verify(() => mockAuthRepository.loginAnonymously()).called(1);
        });
    blocTest<AuthBloc, AuthState>(
        'emits [AuthInProgress,AuthLoadFailure] when AuthLoginAnonymouslyRequested and added and loginAnonymously returns error.',
        build: () => AuthBloc(mockAuthRepositoryFactory),
        setUp: () {
          setUpAnonymousUserForTest(mockUser);

          when(() => mockAuthRepository.getCurrentLoggedUser())
              .thenAnswer((_) async => mockUser);

          when(() => mockAuthRepository.loginAnonymously()).thenAnswer(
              (_) async =>
                  Left(ParseException(message: 'error login Anonymously')));
        },
        act: (bloc) => bloc.add(const AuthLoginAnonymouslyRequested()),
        expect: () => [
              const AuthInProgress(),
              isA<AuthLoadFailure>(),
            ],
        verify: (_) {
          verify(() => mockAuthRepository.loginAnonymously()).called(1);
        });

    blocTest<AuthBloc, AuthState>(
        'emits [AuthInProgress,AuthLogoutSuccess] when AuthLogoutRequested is added.',
        build: () => AuthBloc(mockAuthRepositoryFactory),
        setUp: () {
          when(() => mockAuthRepository.logout())
              .thenAnswer((_) async => const Right(null));
        },
        act: (bloc) => bloc.add(const AuthLogoutRequested()),
        expect: () =>
            <AuthState>[const AuthInProgress(), const AuthLogoutSuccess()],
        verify: (_) {
          verify(() => mockAuthRepository.logout()).called(1);
        });
    blocTest<AuthBloc, AuthState>(
        'emits [AuthInProgress,AuthLoadFailure] when AuthLogoutRequested added and logout() returns error.',
        build: () => AuthBloc(mockAuthRepositoryFactory),
        setUp: () {
          when(() => mockAuthRepository.logout()).thenAnswer(
              (_) async => Left(ParseException(message: 'error logging out')));
        },
        act: (bloc) => bloc.add(const AuthLogoutRequested()),
        expect: () => [
              const AuthInProgress(),
              isA<AuthLoadFailure>(),
            ],
        verify: (_) {
          verify(() => mockAuthRepository.logout()).called(1);
        });

    blocTest<AuthBloc, AuthState>(
        'emits [AuthInProgress,AuthCurrentLoadSuccess] when AuthGetUpdatedUserDataRequested is added.',
        build: () => AuthBloc(mockAuthRepositoryFactory),
        setUp: () {
          when(() => mockAuthRepository.getCurrentUpdatedUserFromServer())
              .thenAnswer((_) async => Right(mockUser));
        },
        act: (bloc) => bloc.add(const AuthGetUpdatedUserDataRequested()),
        expect: () => <AuthState>[
              const AuthInProgress(),
              AuthCurrentLoadSuccess(mockUser)
            ],
        verify: (_) {
          verify(() => mockAuthRepository.getCurrentUpdatedUserFromServer())
              .called(1);
        });
    blocTest<AuthBloc, AuthState>(
        'emits [AuthInProgress,AuthLoadFailure] when AuthGetUpdatedUserDataRequested added and getCurrentUpdatedUserFromServer() returns error.',
        build: () => AuthBloc(mockAuthRepositoryFactory),
        setUp: () {
          when(() => mockAuthRepository.getCurrentUpdatedUserFromServer())
              .thenAnswer((_) async => Left(ParseException(
                  message: 'error getting updated data from server')));
        },
        act: (bloc) => bloc.add(const AuthGetUpdatedUserDataRequested()),
        expect: () => [
              const AuthInProgress(),
              isA<AuthLoadFailure>(),
            ],
        verify: (_) {
          verify(() => mockAuthRepository.getCurrentUpdatedUserFromServer())
              .called(1);
        });

    blocTest<AuthBloc, AuthState>(
        'emits [AuthInProgress, AuthLoggedInSuccess] when AuthSignUpRequested is added.',
        build: () => AuthBloc(mockAuthRepositoryFactory),
        setUp: () {
          when(() => mockAuthRepository.signUp(mockUser))
              .thenAnswer((_) async => Right(mockUser));
        },
        act: (bloc) => bloc.add(AuthSignUpRequested(mockUser)),
        expect: () =>
            <AuthState>[const AuthInProgress(), AuthLoggedInSuccess(mockUser)],
        verify: (_) {
          verify(() => mockAuthRepository.signUp(mockUser)).called(1);
        });
    blocTest<AuthBloc, AuthState>(
        'emits [AuthInProgress,AuthLoadFailure] when AuthSignUpRequested added and signUp() returns error.',
        build: () => AuthBloc(mockAuthRepositoryFactory),
        setUp: () {
          when(() => mockAuthRepository.signUp(mockUser)).thenAnswer(
              (_) async =>
                  Left(ParseException(message: 'error can not SignUp')));
        },
        act: (bloc) => bloc.add(AuthSignUpRequested(mockUser)),
        expect: () => [
              const AuthInProgress(),
              isA<AuthLoadFailure>(),
            ],
        verify: (_) {
          verify(() => mockAuthRepository.signUp(mockUser)).called(1);
        });

    blocTest<AuthBloc, AuthState>(
        'emits [AuthInProgress, AuthLoggedInSuccess] when AuthLoginRequested is added.',
        build: () => AuthBloc(mockAuthRepositoryFactory),
        setUp: () {
          when(() => mockAuthRepository.login(mockUser))
              .thenAnswer((_) async => Right(mockUser));
        },
        act: (bloc) => bloc.add(AuthLoginRequested(mockUser)),
        expect: () =>
            <AuthState>[const AuthInProgress(), AuthLoggedInSuccess(mockUser)],
        verify: (_) {
          verify(() => mockAuthRepository.login(mockUser)).called(1);
        });
    blocTest<AuthBloc, AuthState>(
        'emits [AuthInProgress,AuthLoadFailure] when AuthLoginRequested added and login() returns error.',
        build: () => AuthBloc(mockAuthRepositoryFactory),
        setUp: () {
          when(() => mockAuthRepository.login(mockUser)).thenAnswer(
              (_) async => Left(ParseException(message: 'error log-in')));
        },
        act: (bloc) => bloc.add(AuthLoginRequested(mockUser)),
        expect: () => [
              const AuthInProgress(),
              isA<AuthLoadFailure>(),
            ],
        verify: (_) {
          verify(() => mockAuthRepository.login(mockUser)).called(1);
        });
  });
}
