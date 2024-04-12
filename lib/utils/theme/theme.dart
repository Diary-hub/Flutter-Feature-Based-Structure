import 'package:flutter/material.dart';
import 'package:kumics/utils/theme/custom/appbar_theme.dart';
import 'package:kumics/utils/theme/custom/bottomSheet_theme.dart';
import 'package:kumics/utils/theme/custom/checkbox_theme.dart';
import 'package:kumics/utils/theme/custom/chip_theme.dart';
import 'package:kumics/utils/theme/custom/elevatedButton_theme.dart';
import 'package:kumics/utils/theme/custom/outlinedButton_thene.dart';
import 'package:kumics/utils/theme/custom/textField_theme.dart';
import 'package:kumics/utils/theme/custom/text_theme.dart';

class KAppTheme {
  KAppTheme._();

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "Rabar",
    brightness: Brightness.dark,
    primaryColor: Colors.white,
    scaffoldBackgroundColor: const Color(0xff17181c),
    textTheme: KTextTheme.darkTheme,
    chipTheme: KChipTheme.darkTheme,
    appBarTheme: KAppBarTheme.darkTheme,
    checkboxTheme: KCheckboxTheme.darkTheme,
    bottomSheetTheme: KBottomSheetTheme.darkTheme,
    elevatedButtonTheme: KElevatedTheme.darkTheme,
    outlinedButtonTheme: KOutlinedButtonTheme.darkTheme,
    inputDecorationTheme: KTextFieldTheme.darkTheme,
  );
}
