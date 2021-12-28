import 'package:flut_shop/src/core/utils/validators/email_validator.dart';
import 'package:flut_shop/src/gen/assets.gen.dart';
import 'package:flut_shop/src/presentation/widgets/password_text_field.dart';
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
            keyboardType: TextInputType.emailAddress,
            validator: (val) => emailValidator(val),
            onChanged: (val) {},
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.person),
            ),
          ),
          const SizedBox(height: 16),
          PasswordTextField(
            validator: (val) => emailValidator(val),
          ),
          const SizedBox(height: 12),
          ElevatedButton(
            onPressed: () {},
            child: Text('Login'),
          ),
          ElevatedButton.icon(
            icon: Assets.icons.google.svg(height: 16, color: Colors.white),
            onPressed: () {},
            label: Text('Login via Google'),
          ),
          OutlinedButton(
            onPressed: () {},
            child: Text('Register'),
          ),
        ],
      ),
    );
  }
}
