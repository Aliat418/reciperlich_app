import 'dart:async';

import 'package:flutter/material.dart';

import '../data/dishes_repository.dart';
import '../model/dish.dart';
import '../theme/colors.dart';

class SubmitDialog extends StatelessWidget {
  final Dish newDish;

  const SubmitDialog({
    required this.newDish,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: const EdgeInsets.all(50),
      backgroundColor: Colors.transparent,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.elliptical(15, 15),
        ),
      ),
      content: TextButton(
        style: _getButtonStyle(),
        onPressed: () {
          Navigator.pop(context, newDish);
        },
        child: const Text(
          '🎉 submmitted 🎉',
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: AppColors.pastelPink,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  ButtonStyle _getButtonStyle() {
    return ButtonStyle(
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      backgroundColor: MaterialStateProperty.all<Color>(
        Colors.white,
      ),
    );
  }
}

class DeleteDialog extends StatelessWidget {
  final int index;

  const DeleteDialog({
    required this.index,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      titlePadding: const EdgeInsets.only(top: 25, bottom: 1),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.elliptical(15, 15),
        ),
      ),
      title: const Text(
        'Delete this recipe?',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: AppColors.mediumPurple,
        ),
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _getYes(context, index),
            _getNo(context),
          ],
        ),
      ],
    );
  }

  Widget _getNo(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        Navigator.of(context).pop();
      },
      child: const Text(
        'No',
        style: TextStyle(
          color: AppColors.mediumPurple,
        ),
      ),
    );
  }

  Widget _getYes(
    BuildContext context,
    int index,
  ) {
    return MaterialButton(
      onPressed: () async {
        // await DishesRepo.delete(index);
        unawaited(Navigator.pushNamed(context, '/main_food_page'));
      },
      child: const Text(
        'Yes',
        style: TextStyle(
          color: AppColors.pastelPink,
        ),
      ),
    );
  }
}
