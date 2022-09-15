import 'package:flutter/material.dart';

import '../data/dishes_repository.dart';
import '../model/dish.dart';
import '../resources/images.dart';
import '../theme/colors.dart';
import '../utils/alert_dialogs.dart';

class SubmitButtonAction extends StatelessWidget {
  final TextEditingController _titleController;
  final TextEditingController _ingredientsController;
  final TextEditingController _instructionsController;
  final repo = DishesRepo();

  SubmitButtonAction({
    required TextEditingController titleController,
    required TextEditingController ingredientsController,
    required TextEditingController instructionsController,
    super.key,
  })  : _titleController = titleController,
        _ingredientsController = ingredientsController,
        _instructionsController = instructionsController;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        late final newDish = Dish(
          title: _titleController.text,
          purchasePlace: 'No  place',
          dishColor: AppColors.pastelGreen,
          ingredients: _ingredientsController.text,
          instructions: _instructionsController.text,
          image: AppImages.pizza,
          dishImage: AppImages.pizzaDish,
        );
        DishesRepo.insert(newDish);
        Navigator.pop(context, newDish);
        showDialog(
          context: context,
          builder: (context) {
            return SubmitDialog(newDish: newDish);
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
