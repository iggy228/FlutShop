String? emailValidator(String? email) {
  if (email == null || email.isEmpty) {
    return 'Email not entered';
  }
  if (!RegExp(
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
  ).hasMatch(email)) {
    return 'Email wrong format';
  }
  return null;
}
