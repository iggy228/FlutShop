import 'package:bloc_test/bloc_test.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flut_shop/src/data/auth/auth_facade.dart';
import 'package:flut_shop/src/presentation/bloc/auth/login_form_bloc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_sign_in/google_sign_in.dart';

void main() {
  Firebase.initializeApp();

  group('Testing form login form bloc', () {
    late LoginFormBloc loginFormBloc;
    const testEmail = 'porko@gmail.com';
    const testPassword = 'abc123';
    final initialState = LoginFormState.initial();

    setUp(() {
      loginFormBloc =
          LoginFormBloc(AuthFacade(FirebaseAuth.instance, GoogleSignIn()));
    });

    test('Initial Values', () {
      final expectedValue = LoginFormState.initial();
      expect(loginFormBloc.state, expectedValue);
    });

    // TODO rewrite tests for login bloc form
    blocTest(
      'Emit email change',
      build: () => loginFormBloc,
      act: <LoginFormBloc>(bloc) => bloc.add(LoginFormEmailChanged(testEmail)),
      expect: () => [initialState.copyWith(email: testEmail)],
    );

    blocTest(
      'Emit password change',
      build: () => loginFormBloc,
      act: <LoginFormBloc>(bloc) => bloc.add(
        LoginFormPasswordChanged(testPassword),
      ),
      expect: () => [initialState.copyWith(email: '', password: testPassword)],
    );

    blocTest(
      'Emit email and password change',
      build: () => loginFormBloc,
      act: <LoginFormBloc>(bloc) {
        bloc.add(LoginFormEmailChanged(testEmail));
        bloc.add(LoginFormPasswordChanged(testPassword));
      },
      skip: 1,
      expect: () => [
        initialState.copyWith(
          email: testEmail,
          password: testPassword,
        )
      ],
    );
  });
}
