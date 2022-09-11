import 'package:flutter/material.dart';

import '../theme/colors.dart';

class InputTextField extends StatelessWidget {
  const InputTextField({
    required this.controller,
    required this.label,
    required this.maxLenth,
    required this.maxLines,
    super.key,
  });

  final TextEditingController controller;
  final String label;
  final int maxLenth;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (text) {
        text = text;
      },
      maxLength: maxLenth,
      maxLines: maxLines,
      style: const TextStyle(
        fontSize: 20,
      ),
      controller: controller,
      decoration: InputDecoration(
        alignLabelWithHint: true,
        floatingLabelStyle: const TextStyle(
          color: AppColors.darkPurple,
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: AppColors.pastelPink,
          ),
        ),
        labelText: label,
        labelStyle: const TextStyle(
          fontSize: 20,
          color: AppColors.darkPurple,
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.elliptical(15, 15),
          ),
          borderSide: BorderSide(
            color: AppColors.pastelPink,
            //width: 0,
          ),
        ),
      ),
    );
  }
}
