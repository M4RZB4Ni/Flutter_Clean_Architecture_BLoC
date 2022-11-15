import 'package:flutter/material.dart';
import 'package:flutter_clean_architecture_bloc/app/resources/app_spacing.dart';

class APPAuthField extends StatelessWidget {
  const APPAuthField({
    Key? key,
    required this.hintText,
    this.obscureText = false,
    required this.controller,
  }) : super(key: key);


  /// HINT text as String
  final String hintText;

  /// obscureText with false as defult
  final bool obscureText;

  /// pass controller as TextEditingController
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppSpacing.s24Horizontal8Vertical,
      child: TextField(
        key: key,
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8.0),
            ),
          ),
        ),
      ),
    );
  }
}
