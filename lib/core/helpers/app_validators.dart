import 'app_regex.dart';

class AppValidators {
  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return "Please enter your password";
    }

    if (!AppRegex.hasMinLength(value)) {
      return "Password must be at least 8 characters long";
    }
    if (!AppRegex.hasUpperCase(value)) {
      return "Password must include at least one uppercase letter";
    }
    if (!AppRegex.hasLowerCase(value)) {
      return "Password must include at least one lowercase letter";
    }
    if (!AppRegex.hasNumber(value)) {
      return "Password must include at least one number";
    }
    if (!AppRegex.hasSpecialCharacter(value)) {
      return "Password must include at least one special character (@, \$, !, %, *, ?, &)";
    }

    return null;
  }
}
