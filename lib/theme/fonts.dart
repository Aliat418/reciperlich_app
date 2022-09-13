import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final double fontSize;
  final String text;
  final FontWeight fontWeight;
  final Color color;

  const CustomText({
    required this.text,
    required this.fontSize,
    required this.fontWeight,
    required this.color,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
