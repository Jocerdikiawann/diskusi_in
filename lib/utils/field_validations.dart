//VAlidation string for text form field
extension FieldValidation on String {
  String? get validateEmail {
    return RegExp(r"^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$").hasMatch(this)
        ? null
        : "Please enter valid email";
  }

  String? get validatePassword {
    return contains(RegExp(r'[A-Z]')) &&
            contains(RegExp(r'[a-z]')) &&
            contains(RegExp(r'[0-9]')) &&
            contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]')) &&
            length >= 8
        ? null
        : "*Password must be 8 characther\n*At least 1 capital and 1 number\n*And include unique characther";
  }

  String? get validateRequired {
    return isEmpty ? "Required field" : null;
  }

  String? validateMatchPassword(String compare) {
    return this != compare ? "Password not match" : null;
  }
}
