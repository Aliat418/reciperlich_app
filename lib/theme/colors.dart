import 'dart:math';

import 'package:flutter/material.dart';

class AppColors {
  static const Color darkGreen = Color(0xFF158442);
  static const Color grey = Color(0xFF353a41);
  static const Color goldYellow = Color(0xFFFFCF86);
  static const Color pastelBlue = Color(0x8AA8E6C1);
  static const Color pastelGreen = Color(0x8ADCEDC1);
  static const Color pastelOrange = Color(0x8AFFD3C1);
  static const Color pastelPink = Color(0xFFffAAA5);
}

class DishesColors {
  static const dishesColors = [
    AppColors.pastelOrange,
    AppColors.pastelGreen,
    AppColors.pastelBlue,
  ];
  static Color generateRandomColor() =>
      dishesColors[Random().nextInt(dishesColors.length)];
}
