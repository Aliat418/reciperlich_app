import 'package:flutter/material.dart';
import 'package:reciperlich_app/model/dish.dart';
import 'package:reciperlich_app/theme/colors.dart';

class DishView extends StatelessWidget {
  final Dish dish;

  const DishView(
    this.dish, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 20, right: 20),
          decoration: BoxDecoration(
            color: dish.dishColor,
            borderRadius: const BorderRadius.all(
              Radius.elliptical(15, 15),
            ),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      dish.title,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: AppColors.darkPurple,
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      dish.purchasePlace,
                      style: const TextStyle(
                        fontSize: 15,
                        color: AppColors.darkPurple,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
              dish.image,
            ],
          ),
        ),
      ],
    );
  }
}
