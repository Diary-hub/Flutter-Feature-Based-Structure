import 'package:dev_uploader/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String hint;
  final TextEditingController? textEditingController;
  final double width;
  final Widget? suffixIcon;
  final Widget? prefixicon;
  final bool obscureText;

  const CustomTextFormField({
    super.key,
    required this.hint,
    this.textEditingController,
    this.width = 0.85,
    this.suffixIcon,
    this.prefixicon,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    final double sW = KDeviceUtils.getScreenWidht(context) * width;
    return SizedBox(
      width: sW,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: const Border(
              bottom: BorderSide(width: 3.0, color: Colors.cyan),
              right: BorderSide(width: 1, color: Colors.cyan),
              left: BorderSide(width: 1, color: Colors.cyan),
            ),
          ),
          child: TextFormField(
            obscureText: obscureText,
            controller: textEditingController,
            style: const TextStyle(fontSize: 15),
            decoration: InputDecoration(
              prefixIcon: prefixicon,
              suffixIcon: suffixIcon,
              hintText: hint,
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}
