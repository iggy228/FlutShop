import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

part 'login_form_bloc.freezed.dart';
part 'login_form_event.dart';
part 'login_form_state.dart';

class LoginFormBloc extends Bloc<LoginFormEvent, LoginFormState> {
  LoginFormBloc() : super(LoginFormState.initial()) {
    on<LoginFormEmailChanged>(_changeEmail);
    on<LoginFormPasswordChanged>(_changePassword);
  }

  void _changeEmail(LoginFormEmailChanged event, Emitter emit) {
    emit(state.copyWith(email: event.email));
  }

  void _changePassword(LoginFormPasswordChanged event, Emitter emit) {
    emit(state.copyWith(password: event.password));
  }
}
