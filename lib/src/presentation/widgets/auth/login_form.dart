import 'package:flut_shop/src/core/utils/validators/email_validator.dart';
import 'package:flut_shop/src/core/utils/validators/password_validator.dart';
import 'package:flut_shop/src/gen/assets.gen.dart';
import 'package:flut_shop/src/presentation/bloc/auth/login_form_bloc.dart';
import 'package:flut_shop/src/presentation/widgets/auth/password_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextFormField(
            autocorrect: false,
            keyboardType: TextInputType.emailAddress,
            validator: (val) => emailValidator(val),
            onChanged: (val) => context.read<LoginFormBloc>().add(
                  LoginFormEmailChanged(val),
                ),
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.person),
              hintText: 'mail@mail.com',
            ),
          ),
          const SizedBox(height: 16),
          PasswordTextField(
            onChanged: (val) => context.read<LoginFormBloc>().add(
                  LoginFormPasswordChanged(val),
                ),
            validator: (val) => passwordValidator(val),
          ),
          const SizedBox(height: 12),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                context.read<LoginFormBloc>().add(LoginFormLogin());
              }
            },
            child: Text('Login'),
          ),
          ElevatedButton.icon(
            icon: Assets.icons.google.svg(height: 16, color: Colors.white),
            onPressed: () {
              context.read<LoginFormBloc>().add(LoginFormLoginViaGoogle());
            },
            label: Text('Login via Google'),
          ),
          OutlinedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                context.read<LoginFormBloc>().add(LoginFormRegister());
              }
            },
            child: Text('Register'),
          ),
        ],
      ),
    );
  }
}
