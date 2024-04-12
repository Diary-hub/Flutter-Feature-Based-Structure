// ignore_for_file: file_names

import 'package:flutter/material.dart';

class KBottomSheetTheme {
  KBottomSheetTheme._();

  static BottomSheetThemeData darkTheme = BottomSheetThemeData(
      showDragHandle: true,
      backgroundColor: Colors.black,
      modalBackgroundColor: Colors.black,
      constraints: const BoxConstraints(minWidth: double.infinity),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ));
}
