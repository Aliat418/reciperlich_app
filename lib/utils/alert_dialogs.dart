import 'package:flutter/material.dart';

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
      insetPadding: const EdgeInsets.all(90),
      backgroundColor: AppColors.pastelPink,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(110),
        ),
      ),
      content: TextButton(
        onPressed: () {
          Navigator.pop(context, newDish);
        },
        child: const Text(
          'submmitted',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
