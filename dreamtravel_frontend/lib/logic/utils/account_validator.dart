import 'package:dreamtravel/logic/utils/email_validator.dart';

class Validator {
  static bool isValidEmail(String? value) {
    if (value == null) {
      return false;
    }
    if (value.isEmpty) {
      return false;
    }
    if (value.length < 4) {
      return false;
    }

    return EmailValidator.validate(value); // Use EmailValidator to validate the value passed
  }

  static bool isValidPassword(String? value) {
    if (value == null) {
      return false;
    }

    if (value.isEmpty) {
      return false;
    }

    if (value.length < 4) {
      return false;
    }
    return true;
  }
}
