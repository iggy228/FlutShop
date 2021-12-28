import 'package:bloc_test/bloc_test.dart';
import 'package:flut_shop/src/presentation/bloc/login_form_bloc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Testing form login form bloc', () {
    late LoginFormBloc loginFormBloc;
    const testEmail = 'porko@gmail.com';
    const testPassword = 'abc123';

    setUp(() {
      loginFormBloc = LoginFormBloc();
    });

    test('Initial Values', () {
      final expectedValue = LoginFormState.initial();
      expect(loginFormBloc.state, expectedValue);
    });

    blocTest(
      'Emit email change',
      build: () => loginFormBloc,
      act: <LoginFormBloc>(bloc) => bloc.add(LoginFormEmailChanged(testEmail)),
      expect: () => [LoginFormState(email: testEmail, password: '')],
    );

    blocTest(
      'Emit password change',
      build: () => loginFormBloc,
      act: <LoginFormBloc>(bloc) => bloc.add(
        LoginFormPasswordChanged(testPassword),
      ),
      expect: () => [LoginFormState(email: '', password: testPassword)],
    );

    blocTest(
      'Emit email and password change',
      build: () => loginFormBloc,
      act: <LoginFormBloc>(bloc) {
        bloc.add(LoginFormEmailChanged(testEmail));
        bloc.add(LoginFormPasswordChanged(testPassword));
      },
      skip: 1,
      expect: () => [LoginFormState(email: testEmail, password: testPassword)],
    );

    blocTest(
      'Email and password validate',
      build: () => loginFormBloc,
      act: <LoginFormBloc>(bloc) {
        bloc.add(LoginFormEmailChanged(testEmail));
        bloc.add(LoginFormPasswordChanged(testPassword));
        bloc.add(LoginFormLogin());
      },
      skip: 2,
      expect: () => [LoginFormState(email: testEmail, password: testPassword)],
    );
  });
}
