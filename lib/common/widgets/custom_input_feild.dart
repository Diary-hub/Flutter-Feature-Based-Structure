// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  CustomInputField({
    super.key,
    required this.labelText,
    required this.prefixIcon,
    required this.obscureText,
    this.suffixIcon,
    this.controller,
    this.enabled,
    this.focusNode,
    this.validator,
    this.expands = false,
  });

  final String labelText;
  final Widget prefixIcon;
  final bool obscureText;
  final bool expands;
  Widget? suffixIcon;
  TextEditingController? controller;
  FocusNode? focusNode;
  bool? enabled;
  String? Function(String?)? validator;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      expands: expands,
      enabled: enabled,
      focusNode: focusNode,
      validator: validator,
      obscureText: obscureText,
      controller: controller,
      decoration: InputDecoration(
          floatingLabelStyle: const TextStyle().copyWith(
            fontSize: 22,
            color: Colors.orange.withOpacity(0.8),
          ),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          labelText: labelText,
          labelStyle: Theme.of(context).textTheme.labelMedium),
    );
  }
}
