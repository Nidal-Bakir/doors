import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:doors/core/errors/security_exception_flow.dart';
import 'package:doors/core/errors/server_error.dart';
import 'package:doors/core/features/auth/presentation/managers/auth_bloc/auth_bloc.dart';
import 'package:doors/core/features/auth/repository/auth_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';

import '../../../../../../test_util/test_util.dart';

class MockAuthRepository extends Mock implements AuthRepository {}

class MockSecurityExceptionFlow extends Mock implements SecurityExceptionFlow {}

class MockParseInvalidSessionToken extends Mock
    implements ParseInvalidSessionToken {}

void main() {
  final mockAuthRepository = MockAuthRepository();
  final mockUser = MockUser();
  final mockSecurityExceptionFlow = MockSecurityExceptionFlow();
  group('authBloc: with LoggedInAuthRepository test group', () {
    setUp(() {
      setUpBasicLoggedUserForTest(mockUser);
      reset(mockAuthRepository);
      when(() => mockSecurityExceptionFlow.securityErrorFlowStream())
          .thenAnswer((_) => const Stream.empty());
      when(() => mockAuthRepository.getCurrentLoggedUser())
          .thenAnswer((_) async => mockUser);
    });

    blocTest<AuthBloc, AuthState>(
        'emits [AuthCurrentLoadSuccess] when AuthCurrentUserLoaded is added if the user logged-in.',
        build: () => AuthBloc(mockAuthRepository, mockSecurityExceptionFlow),
        setUp: () {
          when(() => mockAuthRepository.getCurrentLoggedUser())
              .thenAnswer((_) async => mockUser);
        },
        act: (bloc) => bloc.add(const AuthCurrentUserLoaded()),
        expect: () => <AuthState>[
              const AuthInProgress(),
              AuthCurrentUserLoadSuccess(mockUser)
            ],
        verify: (_) {
          verify(() => mockAuthRepository.getCurrentLoggedUser()).called(1);
        });

    blocTest<AuthBloc, AuthState>(
        'emits [AuthInProgress,AuthCurrentLoadSuccess] when AuthCurrentUserLoaded is added then the bloc should add [AuthLoginAnonymouslyRequested] because the getCurrentLoggedUser returns null.',
        build: () => AuthBloc(mockAuthRepository, mockSecurityExceptionFlow),
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
              AuthCurrentUserLoadSuccess(mockUser)
            ],
        verify: (_) {
          verify(() => mockAuthRepository.getCurrentLoggedUser()).called(1);
          verify(() => mockAuthRepository.loginAnonymously()).called(1);
        });

    blocTest<AuthBloc, AuthState>(
        'emits [AuthInProgress,AuthCurrentLoadSuccess] when AuthLoginAnonymouslyRequested is added.',
        build: () => AuthBloc(mockAuthRepository, mockSecurityExceptionFlow),
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
              AuthCurrentUserLoadSuccess(mockUser)
            ],
        verify: (_) {
          verify(() => mockAuthRepository.loginAnonymously()).called(1);
        });
    blocTest<AuthBloc, AuthState>(
        'emits [AuthInProgress,AuthLoadFailure] when AuthLoginAnonymouslyRequested and added and loginAnonymously returns error.',
        build: () => AuthBloc(mockAuthRepository, mockSecurityExceptionFlow),
        setUp: () {
          setUpAnonymousUserForTest(mockUser);

          when(() => mockAuthRepository.getCurrentLoggedUser())
              .thenAnswer((_) async => mockUser);

          when(() => mockAuthRepository.loginAnonymously()).thenAnswer(
              (_) async => Left(ParseException.fromParseError(
                  ParseError(message: 'error login Anonymously'))));
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
        build: () => AuthBloc(mockAuthRepository, mockSecurityExceptionFlow),
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
        build: () => AuthBloc(mockAuthRepository, mockSecurityExceptionFlow),
        setUp: () {
          when(() => mockAuthRepository.logout()).thenAnswer((_) async => Left(
              ParseException.fromParseError(
                  ParseError(message: 'error logging out'))));
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
        build: () => AuthBloc(mockAuthRepository, mockSecurityExceptionFlow),
        setUp: () {
          when(() => mockAuthRepository.getCurrentUpdatedUserFromServer())
              .thenAnswer((_) async => Right(mockUser));
        },
        act: (bloc) => bloc.add(const AuthGetUpdatedUserDataRequested()),
        expect: () => <AuthState>[
              const AuthInProgress(),
              AuthCurrentUserLoadSuccess(mockUser)
            ],
        verify: (_) {
          verify(() => mockAuthRepository.getCurrentUpdatedUserFromServer())
              .called(1);
        });
    blocTest<AuthBloc, AuthState>(
        'emits [AuthInProgress,AuthLoadFailure] when AuthGetUpdatedUserDataRequested added and getCurrentUpdatedUserFromServer() returns error.',
        build: () => AuthBloc(mockAuthRepository, mockSecurityExceptionFlow),
        setUp: () {
          when(() => mockAuthRepository.getCurrentUpdatedUserFromServer())
              .thenAnswer((_) async => Left(ParseException.fromParseError(
                  ParseError(
                      message: 'error getting updated data from server'))));
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
        'emits [AuthInProgress,AuthLoadFailure,AuthInProgress,AuthLogoutSuccess] when AuthGetUpdatedUserDataRequested added and getCurrentUpdatedUserFromServer() returns [ParseInvalidSessionToke] Error.',
        build: () => AuthBloc(mockAuthRepository, mockSecurityExceptionFlow),
        setUp: () {
          final error = MockParseInvalidSessionToken();
          when(() => mockAuthRepository.getCurrentUpdatedUserFromServer())
              .thenAnswer((_) async => Left(error));

          when(() => mockSecurityExceptionFlow.securityErrorFlowStream())
              .thenAnswer((invocation) => Stream.value(error));

          when(() => mockAuthRepository.logout())
              .thenAnswer((_) async => const Right(null));
        },
        act: (bloc) => bloc.add(const AuthGetUpdatedUserDataRequested()),
        expect: () => [
              const AuthInProgress(),
              isA<AuthLoadFailure>(),
              const AuthInProgress(),
              const AuthLogoutSuccess()
            ],
        verify: (_) {
          verify(() => mockAuthRepository.getCurrentUpdatedUserFromServer())
              .called(1);
          verify(() => mockAuthRepository.logout()).called(1);
        });

    blocTest<AuthBloc, AuthState>(
        'emits [AuthInProgress, AuthSignUpSuccess] when AuthSignUpRequested is added.',
        build: () => AuthBloc(mockAuthRepository, mockSecurityExceptionFlow),
        setUp: () {
          when(() => mockAuthRepository.signUp(mockUser))
              .thenAnswer((_) async => Right(mockUser));
        },
        act: (bloc) => bloc.add(AuthSignUpRequested(mockUser)),
        expect: () =>
            <AuthState>[const AuthInProgress(), AuthSignUpSuccess(mockUser)],
        verify: (_) {
          verify(() => mockAuthRepository.signUp(mockUser)).called(1);
        });
    blocTest<AuthBloc, AuthState>(
        'emits [AuthInProgress,AuthLoadFailure] when AuthSignUpRequested added and signUp() returns error.',
        build: () => AuthBloc(mockAuthRepository, mockSecurityExceptionFlow),
        setUp: () {
          when(() => mockAuthRepository.signUp(mockUser)).thenAnswer(
              (_) async => Left(ParseException.fromParseError(
                  ParseError(message: 'error can not SignUp'))));
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
        build: () => AuthBloc(mockAuthRepository, mockSecurityExceptionFlow),
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
        build: () => AuthBloc(mockAuthRepository, mockSecurityExceptionFlow),
        setUp: () {
          when(() => mockAuthRepository.login(mockUser)).thenAnswer((_) async =>
              Left(ParseException.fromParseError(
                  ParseError(message: 'error logging in'))));
        },
        act: (bloc) => bloc.add(AuthLoginRequested(mockUser)),
        expect: () => [
              const AuthInProgress(),
              isA<AuthLoadFailure>(),
            ],
        verify: (_) {
          verify(() => mockAuthRepository.login(mockUser)).called(1);
        });

    blocTest<AuthBloc, AuthState>(
        'emits [AuthInProgress, AuthPasswordResetSendSuccess] when AuthResetPasswordRequested is added.',
        build: () => AuthBloc(mockAuthRepository, mockSecurityExceptionFlow),
        setUp: () {
          when(() => mockAuthRepository.sendPasswordReset(
                  userEmail: 'test@email.com'))
              .thenAnswer((_) async => const Right(null));
        },
        act: (bloc) => bloc
            .add(const AuthResetPasswordRequested(userEmail: 'test@email.com')),
        expect: () => <AuthState>[
              const AuthInProgress(),
              const AuthPasswordResetSendSuccess()
            ],
        verify: (_) {
          verify(() => mockAuthRepository.sendPasswordReset(
              userEmail: 'test@email.com')).called(1);
        });
    blocTest<AuthBloc, AuthState>(
        'emits [AuthInProgress,AuthLoadFailure] when AuthResetPasswordRequested added and sendPasswordReset() returns error.',
        build: () => AuthBloc(mockAuthRepository, mockSecurityExceptionFlow),
        setUp: () {
          when(() =>
              mockAuthRepository.sendPasswordReset(
                  userEmail: 'test@email.com')).thenAnswer(
              (_) async => Left(ParseException.fromParseError(ParseError())));
        },
        act: (bloc) => bloc
            .add(const AuthResetPasswordRequested(userEmail: 'test@email.com')),
        expect: () => [
              const AuthInProgress(),
              isA<AuthLoadFailure>(),
            ],
        verify: (_) {
          verify(() => mockAuthRepository.sendPasswordReset(
              userEmail: 'test@email.com')).called(1);
        });
    blocTest<AuthBloc, AuthState>(
        'emits [AuthInProgress,AuthLoadFailure,AuthInProgress,AuthLogoutSuccess] when AuthResetPasswordRequested added and sendPasswordReset() returns [ParseInvalidSessionToke] Error.',
        build: () => AuthBloc(mockAuthRepository, mockSecurityExceptionFlow),
        setUp: () {
          final error = MockParseInvalidSessionToken();

          when(() => mockSecurityExceptionFlow.securityErrorFlowStream())
              .thenAnswer((invocation) => Stream.value(error));

          when(() => mockAuthRepository.sendPasswordReset(
                  userEmail: 'test@email.com'))
              .thenAnswer((_) async => Left(error));

          when(() => mockAuthRepository.logout())
              .thenAnswer((_) async => const Right(null));
        },
        act: (bloc) => bloc
            .add(const AuthResetPasswordRequested(userEmail: 'test@email.com')),
        expect: () => [
              const AuthInProgress(),
              isA<AuthLoadFailure>(),
              const AuthInProgress(),
              const AuthLogoutSuccess()
            ],
        verify: (_) {
          verify(() => mockAuthRepository.sendPasswordReset(
              userEmail: 'test@email.com')).called(1);
          verify(() => mockAuthRepository.logout()).called(1);
        });
  });
}
