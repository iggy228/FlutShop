part of 'login_form_bloc.dart';

@freezed
class LoginFormState with _$LoginFormState {
  const factory LoginFormState({
    required String email,
    required String password,
    required AuthResponse authResponse,
    required bool isSubmitting,
    required bool showErrorMessage,
  }) = _LoginFormState;

  factory LoginFormState.initial() => const LoginFormState(
        email: '',
        password: '',
        authResponse: AuthResponse.none(),
        isSubmitting: false,
        showErrorMessage: false,
      );
}
