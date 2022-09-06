import 'package:flutter/material.dart';

class Dish {
  final String title;
  final String purchasePlace;
  final String image;
  final Color dishColor;
  final String ingredients;
  final String instructions;
  final String dishImage;

  const Dish({
    required this.title,
    required this.purchasePlace,
    required this.image,
    required this.dishColor,
    required this.ingredients,
    required this.instructions,
    required this.dishImage,
  });
}
