import 'package:flutter/material.dart';
import '../model/dish.dart';
import '../theme/fonts.dart';

class TitleWidget extends StatelessWidget {
  final Dish dish;

  const TitleWidget({Key? key, required this.dish}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.all(15),
      color: dish.dishColor,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TitleText(text: dish.title),
        ],
      ),
    );
  }
}
