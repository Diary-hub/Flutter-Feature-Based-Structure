// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:kumics/utils/constants/colors.dart';
import 'package:kumics/utils/device/device_utility.dart';
import 'package:kumics/utils/helpers/helper_functions.dart';

class SimpleButton extends StatelessWidget {
  const SimpleButton({
    super.key,
    required this.onPressed,
    required this.text,
    this.backgroundColor = KColors.secondaryColor,
    this.height = 0.08,
    this.width = 0.45,
    this.style,
  });
  final num height;
  final num width;
  final Color? backgroundColor;
  final Function()? onPressed;
  final String text;
  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: KHelperFunctions.screenHeight() * height,
      width: KDeviceUtils.getScreenWidht(context) * width,
      child: TextButton(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(
            backgroundColor,
          ),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: style ??
              const TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w100),
        ),
      ),
    );
  }
}
