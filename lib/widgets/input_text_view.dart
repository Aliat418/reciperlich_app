import 'package:flutter/material.dart';

import '../theme/colors.dart';

class InputTextView extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final int maxLength;
  final int maxLines;

  const InputTextView({
    required this.controller,
    required this.label,
    required this.maxLength,
    required this.maxLines,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6),
      child: TextField(
        cursorColor: AppColors.pastelPink,
        maxLength: maxLength,
        maxLines: maxLines,
        style: const TextStyle(
          color: AppColors.grey,
          fontSize: 18,
        ),
        controller: controller,
        decoration: _getInputDecor(),
      ),
    );
  }

  InputDecoration _getInputDecor() {
    return InputDecoration(
      alignLabelWithHint: true,
      floatingLabelStyle: const TextStyle(
        color: AppColors.grey,
      ),
      focusedBorder: const OutlineInputBorder(
        borderSide: BorderSide(
          color: AppColors.pastelPink,
        ),
      ),
      labelText: label,
      labelStyle: const TextStyle(
        fontSize: 18,
        color: AppColors.grey,
      ),
      enabledBorder: const OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.elliptical(15, 15),
        ),
        borderSide: BorderSide(
          color: AppColors.pastelPink,
        ),
      ),
    );
  }
}
