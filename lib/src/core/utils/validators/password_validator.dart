String? passwordValidator(String? password) {
  if (password == null || password.isEmpty) {
    return 'Password not entered';
  }
  if (password.length < 6) {
    return 'Password is short';
  }
  if (!RegExp('[a-zA-Z0-9]{6,}').hasMatch(password)) {
    return 'Password contains invalid characters';
  }
  return null;
}
