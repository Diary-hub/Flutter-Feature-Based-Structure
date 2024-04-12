class KValidator {
  static String? validateField(String? fieldName, String? value) {
    if (value == null || value.isEmpty) {
      return '$fieldName داواکراوە';
    }
    return null;
  }

  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'ئیمەیڵ داواکراوە';
    }

    // Regular expression for email validation
    final emailRegExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegExp.hasMatch(value)) {
      return 'ئیمەیڵەکە درووست نیە';
    }

    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'وشەی نهێنی داواکراوە';
    }

    // Check for minimum password length
    if (value.length < 6) {
      return 'دەبێت لە ٦ پیت زیاتر بێت';
    }

    // Check for uppercase letters
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'دەبێت پیتێکی کەپیتەڵ تێدا بێت';
    }

    // Check for numbers
    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'دەبێت ژمارەیەکی تێدا بێت';
    }

    // Check for special characters
    if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return 'دەبێت هێمایەکی تایبەتی تێدا بێت';
    }

    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'ژمارەی مۆبایل داواکراوە';
    }

    // Regular expression for phone number validation (assuming a 10-digit US phone number format)
    final phoneRegExp = RegExp(r'^\d{11}$');

    if (!phoneRegExp.hasMatch(value)) {
      return 'دەبێت  ١١ ژمارە بێت';
    }

    return null;
  }

// Add more custom validators as needed for your specific requirements.
}
