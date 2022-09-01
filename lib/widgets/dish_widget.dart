// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:reciperlich_app/utils/colors.dart';

class Dish extends StatelessWidget {
  const Dish({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: EdgeInsets.only(left: 20),
          decoration: BoxDecoration(
              color: AppColors.mediumRed,
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
                          'Pizza time!',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: AppColors.darkPurple,
                          ),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Buy at Dominos',
                          style: TextStyle(
                            fontSize: 15,
                            color: AppColors.darkPurple,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ]),
                ),
                Image(
                  image: AssetImage('assets/images/pizza.png'),
                  width: 200,
                )
              ]),
        )
      ],
    );
  }
}
