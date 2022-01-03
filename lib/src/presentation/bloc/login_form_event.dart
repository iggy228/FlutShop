part of 'login_form_bloc.dart';

@immutable
abstract class LoginFormEvent {}

class LoginFormEmailChanged extends LoginFormEvent {
  final String email;

  LoginFormEmailChanged(this.email);
}

class LoginFormPasswordChanged extends LoginFormEvent {
  final String password;

  LoginFormPasswordChanged(this.password);
}

class LoginFormLogin extends LoginFormEvent {}

class LoginFormRegister extends LoginFormEvent {}

class LoginFormLoginViaGoogle extends LoginFormEvent {}

class LoginFormResetAuthState extends LoginFormEvent {}
