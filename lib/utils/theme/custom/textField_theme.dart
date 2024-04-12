// ignore_for_file: file_names

import 'package:flutter/material.dart';

class KTextFieldTheme {
  KTextFieldTheme._();

  static InputDecorationTheme darkTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,
    helperStyle: const TextStyle().copyWith(
      fontSize: 22,
      color: Colors.white.withOpacity(0.8),
    ),
    labelStyle: const TextStyle().copyWith(
      fontSize: 22,
      color: Colors.white.withOpacity(0.8),
    ),
    hintStyle: const TextStyle().copyWith(
      fontSize: 22,
      color: Colors.white.withOpacity(0.8),
    ),
    errorStyle: const TextStyle().copyWith(fontWeight: FontWeight.normal),
    floatingLabelStyle: const TextStyle().copyWith(
      color: Colors.black.withOpacity(0.8),
    ),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(22),
      borderSide: const BorderSide(width: 0.5, color: Colors.grey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(22),
      borderSide: const BorderSide(width: 1, color: Colors.grey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(22),
      borderSide: BorderSide(width: 1, color: Colors.orange.withOpacity(0.2)),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(22),
      borderSide: const BorderSide(width: 1, color: Colors.red),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(22),
      borderSide: const BorderSide(width: 2, color: Colors.orange),
    ),
  );
}
