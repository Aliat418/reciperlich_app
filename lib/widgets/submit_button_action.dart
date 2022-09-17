import 'package:flutter/material.dart';

import '../data/dishes_repository.dart';
import '../model/dish.dart';
import '../resources/images.dart';
import '../theme/colors.dart';
import '../utils/alert_dialogs.dart';

class SubmitButtonAction extends StatefulWidget {
  final TextEditingController _titleController;
  final TextEditingController _ingredientsController;
  final TextEditingController _instructionsController;

  const SubmitButtonAction({
    required TextEditingController titleController,
    required TextEditingController ingredientsController,
    required TextEditingController instructionsController,
    super.key,
  })  : _titleController = titleController,
        _ingredientsController = ingredientsController,
        _instructionsController = instructionsController;

  @override
  State<SubmitButtonAction> createState() => _SubmitButtonActionState();
}

class _SubmitButtonActionState extends State<SubmitButtonAction> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        late final newDish = Dish(
          title: widget._titleController.text,
          purchasePlace: 'No place',
          dishColor: AppColors.pastelGreen.value,
          ingredients: widget._ingredientsController.text,
          instructions: widget._instructionsController.text,
          image: AppImages.pizza,
          dishImage: AppImages.pizzaDish,
        );
        await DishesRepo.insert(newDish);
        if (!mounted) {
          return;
        }
        Navigator.pop(context, newDish);
        await showDialog(
          context: context,
          builder: (context) {
            return SubmitDialog(
              newDish: newDish,
            );
          },
        );
      },
      style: _getButtonStyle(),
      child: const Text(
        'Submit recipe',
      ),
    );
  }

  ButtonStyle _getButtonStyle() {
    return ButtonStyle(
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      backgroundColor: MaterialStateProperty.all<Color>(
        AppColors.pastelPink,
      ),
    );
  }
}
