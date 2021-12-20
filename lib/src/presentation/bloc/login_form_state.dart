part of 'login_form_bloc.dart';

@freezed
class LoginFormState with _$LoginFormState {
  const factory LoginFormState({
    required String email,
    required String password,
  }) = _LoginFormState;

  factory LoginFormState.initial() => const LoginFormState(
        email: '',
        password: '',
      );
}
