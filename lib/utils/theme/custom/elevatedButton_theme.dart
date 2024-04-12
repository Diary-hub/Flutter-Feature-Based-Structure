// ignore_for_file: file_names

import 'package:flutter/material.dart';

class KElevatedTheme {
  KElevatedTheme._();

  static final darkTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        elevation: 0,
        foregroundColor: Colors.white,
        backgroundColor: Colors.amber,
        disabledBackgroundColor: Colors.amberAccent.withOpacity(0.2),
        disabledForegroundColor: Colors.amberAccent.withOpacity(0.2),
        side: const BorderSide(color: Colors.amber),
        padding: const EdgeInsets.symmetric(vertical: 18),
        textStyle: const TextStyle(
            fontSize: 16, color: Colors.black, fontWeight: FontWeight.w600),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
  );
}
