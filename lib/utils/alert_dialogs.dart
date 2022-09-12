import 'package:flutter/material.dart';

import '../model/dish.dart';
import '../theme/colors.dart';

class SubmmitDialogWidget extends StatelessWidget {
  final Dish newDish;

  const SubmmitDialogWidget({
    required this.newDish,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: const EdgeInsets.all(80),
      backgroundColor: AppColors.pastelPink,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.elliptical(110, 110),
        ),
      ),
      content: TextButton(
        onPressed: () {
          Navigator.pop(context, newDish);
        },
        child: const Text(
          'submmited',
          style: TextStyle(
            fontSize: 29,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
