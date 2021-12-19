import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  final String? initialValue;
  final void Function(String value)? onChanged;
  final Widget prefixIcon;

  const PasswordTextField({
    Key? key,
    this.initialValue = '',
    this.onChanged,
    this.prefixIcon = const Icon(Icons.lock),
  }) : super(key: key);

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autocorrect: false,
      obscureText: showPassword,
      onChanged: (val) {},
      decoration: InputDecoration(
        prefixIcon: widget.prefixIcon,
        suffixIcon: IconButton(
          icon: Icon(showPassword ? Icons.visibility : Icons.visibility_off),
          onPressed: () => setState(() => showPassword = !showPassword),
        ),
      ),
    );
  }
}
