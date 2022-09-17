import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

part 'dish.g.dart';

@HiveType(typeId: 0)
class Dish {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String purchasePlace;
  @HiveField(2)
  final String? image;
  @HiveField(3)
  final int dishColor;
  @HiveField(4)
  final String ingredients;
  @HiveField(5)
  final String instructions;
  @HiveField(6)
  final String? dishImage;

  const Dish({
    required this.title,
    required this.purchasePlace,
    required this.dishColor,
    required this.ingredients,
    required this.instructions,
    this.dishImage,
    this.image,
  });
}
