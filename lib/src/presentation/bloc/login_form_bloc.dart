import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flut_shop/src/domain/auth/auth_response.dart';
import 'package:flut_shop/src/domain/auth/i_auth_facade.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'login_form_bloc.freezed.dart';
part 'login_form_event.dart';
part 'login_form_state.dart';

@injectable
class LoginFormBloc extends Bloc<LoginFormEvent, LoginFormState> {
  final IAuthFacade _authFacade;

  LoginFormBloc(this._authFacade) : super(LoginFormState.initial()) {
    on<LoginFormEmailChanged>(_changeEmail);
    on<LoginFormPasswordChanged>(_changePassword);
    on<LoginFormLogin>(_login);
    on<LoginFormRegister>(_register);
    on<LoginFormResetAuthState>(_resetAuthState);
    on<LoginFormLoginViaGoogle>(_loginViaGoogle);
  }

  void _changeEmail(LoginFormEmailChanged event, Emitter emit) {
    emit(state.copyWith(email: event.email));
  }

  void _changePassword(LoginFormPasswordChanged event, Emitter emit) {
    emit(state.copyWith(password: event.password));
  }

  void _resetAuthState(LoginFormResetAuthState event, Emitter emit) {
    emit(state.copyWith(
      authResponse: const AuthResponse.none(),
      showErrorMessage: false,
    ));
  }

  Future<void> _login(LoginFormLogin event, Emitter emit) async {
    emit(state.copyWith(
      isSubmitting: true,
      authResponse: const AuthResponse.none(),
    ));

    final result = await _authFacade.login(state.email, state.password);

    if (result == null) {
      emit(state.copyWith(
        authResponse: AuthResponse.error('Unexpected error: $result'),
        showErrorMessage: true,
      ));
    } else {
      if (result is Error) {
        emit(state.copyWith(showErrorMessage: true));
      }
      emit(state.copyWith(authResponse: result, isSubmitting: false));
    }
  }

  Future<void> _register(LoginFormRegister event, Emitter emit) async {
    emit(state.copyWith(
      isSubmitting: true,
      authResponse: const AuthResponse.none(),
    ));

    final result = await _authFacade.register(state.email, state.password);

    if (result == null) {
      emit(state.copyWith(
        authResponse: AuthResponse.error('Unexpected error: $result'),
        showErrorMessage: true,
      ));
    } else {
      if (result is Error) {
        emit(state.copyWith(showErrorMessage: true));
      }
      emit(state.copyWith(authResponse: result, isSubmitting: false));
    }
  }

  Future<void> _loginViaGoogle(
    LoginFormLoginViaGoogle event,
    Emitter emit,
  ) async {
    final result = await _authFacade.loginViaGoogle();

    if (result == null) {
      emit(state.copyWith(
        authResponse: AuthResponse.error('Unexpected error: $result'),
        showErrorMessage: true,
      ));
    } else {
      if (result is Error) {
        emit(state.copyWith(showErrorMessage: true));
      }
      emit(state.copyWith(authResponse: result, isSubmitting: false));
    }
  }
}
