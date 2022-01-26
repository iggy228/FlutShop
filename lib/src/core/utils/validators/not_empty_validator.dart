String? notEmptyValidator(String? val, {String errorMessage = 'required'}) {
  if (val == null) {
    return errorMessage;
  }
  return val.isEmpty ? errorMessage : null;
}
