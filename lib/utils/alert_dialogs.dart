import 'package:flutter/material.dart';

import '../data/dishes_repository.dart';
import '../model/dish.dart';
import '../theme/colors.dart';
import '../theme/custom_text.dart';

class SubmitDialog extends StatelessWidget {
  final Dish newDish;

  const SubmitDialog({
    required this.newDish,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 50,
      ),
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
        child: const Padding(
          padding: EdgeInsets.all(10),
          child: CustomText(
            text: 'Submitted',
            fontSize: 25,
            color: AppColors.pastelPink,
            textAlign: TextAlign.center,
          ),
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

class DeleteDialog extends StatefulWidget {
  final int index;

  const DeleteDialog({
    required this.index,
    super.key,
  });

  @override
  State<DeleteDialog> createState() => _DeleteDialogState();
}

class _DeleteDialogState extends State<DeleteDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: const EdgeInsets.symmetric(
        horizontal: 70,
      ),
      titlePadding: const EdgeInsets.only(top: 25, bottom: 1),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.elliptical(15, 15),
        ),
      ),
      title: const CustomText(
        textAlign: TextAlign.center,
        text: 'Delete this recipe?',
        fontSize: 20,
        color: AppColors.grey,
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _getYes(context, widget.index),
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
      child: const CustomText(
        text: 'No',
        fontSize: 15,
        color: AppColors.grey,
      ),
    );
  }

  Widget _getYes(
    BuildContext context,
    int index,
  ) {
    return MaterialButton(
      onPressed: () async {
        await DishesRepo.delete(index);
        if (!mounted) {
          return;
        }
        await Navigator.pushNamed(context, '/main_food_page');
      },
      child: const CustomText(
        text: 'Yes',
        fontSize: 15,
        color: AppColors.pastelPink,
      ),
    );
  }
}

class RequaredFieldsDialog extends StatelessWidget {
  const RequaredFieldsDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const AlertDialog(
      insetPadding: EdgeInsets.all(60),
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      titlePadding: EdgeInsets.symmetric(
        vertical: 15,
      ),
      title: CustomText(
        text: 'All fields required',
        fontSize: 25,
        color: AppColors.pastelPink,
        textAlign: TextAlign.center,
      ),
    );
  }
}
