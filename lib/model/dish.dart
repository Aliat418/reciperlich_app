import 'package:flutter/material.dart';

class Dish {
  final String title;
  final String purchasePlace;
  final Image image;
  final Color dishColor;
  final Image dishImage;
  final String ingredients;
  final String instructions;

  Dish(
    this.title,
    this.purchasePlace,
    this.image,
    this.dishColor,
    this.ingredients,
    this.instructions,
    this.dishImage,
  );
}
