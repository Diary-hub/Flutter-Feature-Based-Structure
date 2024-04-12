import 'package:flutter/material.dart';
import 'package:kumics/utils/constants/colors.dart';

class KTextTheme {
  KTextTheme._();

  static TextTheme darkTheme = TextTheme(
    //Headlines
    headlineLarge: const TextStyle().copyWith(
        fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
    headlineMedium: const TextStyle().copyWith(
        fontSize: 24,
        fontWeight: FontWeight.w600,
        color: Colors.white.withOpacity(0.5)),
    headlineSmall: const TextStyle().copyWith(
        fontSize: 18, fontWeight: FontWeight.w600, color: Colors.white),
    //Titles
    titleLarge: const TextStyle().copyWith(
        fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white),
    titleMedium: const TextStyle().copyWith(
        fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white),
    titleSmall: const TextStyle().copyWith(
        fontSize: 16, fontWeight: FontWeight.w400, color: Colors.white),
    // Bodys
    bodyLarge: const TextStyle().copyWith(
        fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white),
    bodyMedium: const TextStyle().copyWith(
        fontSize: 14, fontWeight: FontWeight.normal, color: Colors.white),
    bodySmall: const TextStyle().copyWith(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: Colors.white.withOpacity(0.5)),
    // labels
    labelLarge: const TextStyle().copyWith(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: Colors.white.withOpacity(0.5)),
    labelMedium: const TextStyle().copyWith(
        fontSize: 18,
        fontWeight: FontWeight.normal,
        color: Colors.white.withOpacity(0.5)),
    labelSmall: const TextStyle().copyWith(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        color: KColors.secondaryColor),
  );
}
