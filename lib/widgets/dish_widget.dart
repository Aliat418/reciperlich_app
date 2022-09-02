// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:reciperlich_app/model.dart';
import 'package:reciperlich_app/utils/colors.dart';

class Dish extends StatelessWidget {
  final DishModel dish;

  const Dish(
    this.dish, {
    Key? key,
  })  : assert(dish == dish), //???
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          decoration: BoxDecoration(
              color: dish.dishColor,
              borderRadius: BorderRadius.all(Radius.elliptical(15, 15))),
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
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: AppColors.darkPurple,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          dish.purchasePlace,
                          style: TextStyle(
                            fontSize: 15,
                            color: AppColors.darkPurple,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ]),
                ),
                dish.image,
              ]),
        )
      ],
    );
  }
}
