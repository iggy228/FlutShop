import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextFormField(
            autocorrect: false,
            onChanged: (val) {},
          ),
          TextFormField(
            autocorrect: false,
            obscureText: false,
            onChanged: (val) {},
          ),
        ],
      ),
    );
  }
}
