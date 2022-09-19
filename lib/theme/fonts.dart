import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final double fontSize;
  final String text;
  final Color color;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;

  const CustomText({
    required this.text,
    required this.fontSize,
    required this.color,
    this.fontWeight,
    this.textAlign,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: textAlign,
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
