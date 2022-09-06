import 'package:flutter/material.dart';

class Dish {
  final String title;
  final String purchasePlace;
  final Image image;
  final Color dishColor;
  final String ingredients;
  final String instructions;
  final Image dishImage;

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
