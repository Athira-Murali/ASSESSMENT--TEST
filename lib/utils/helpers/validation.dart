
const String firstnameRequiredText = 'First-name required';

const String passwordRequiredText = 'Password required';
const String invalidPassword =
    "Minimum 8 characters,at least 1 letter and 1 number";
const String invalidName =
    "Please enter a vaild  name.\n name shall\n- start with an alphabet.\n- have no special characters.\n- have minimum 2 characters.";


const String errorText = 'Error';
const String successText = 'Success';

abstract class ValidationStatus {}

class ValidationSuccess extends ValidationStatus {
  @override
  String toString() {
    return "success";
  }
}

class ValidationError extends ValidationStatus {
  final String errorMessage;

  ValidationError({required this.errorMessage});

  @override
  String toString() {
    return errorMessage;
  }
}



bool isValidName(String name) {
  return RegExp(r"^[A-Za-z]{1,1}[A-Za-z ]{0,28}[A-Za-z]{1,1}$").hasMatch(name);
}

bool isValidPassword(String password) {
  return RegExp(r"^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$").hasMatch(password);
}

