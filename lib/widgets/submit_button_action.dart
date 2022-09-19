import 'package:flutter/material.dart';

import '../data/dishes_repository.dart';
import '../model/dish.dart';
import '../theme/colors.dart';
import '../utils/alert_dialogs.dart';

class SubmitButtonAction extends StatefulWidget {
  final TextEditingController _titleController;
  final TextEditingController _ingredientsController;
  final TextEditingController _instructionsController;
  final String _image;

  const SubmitButtonAction({
    required TextEditingController titleController,
    required TextEditingController ingredientsController,
    required TextEditingController instructionsController,
    required String image,
    super.key,
  })  : _titleController = titleController,
        _ingredientsController = ingredientsController,
        _instructionsController = instructionsController,
        _image = image;

  @override
  State<SubmitButtonAction> createState() => _SubmitButtonActionState();
}

class _SubmitButtonActionState extends State<SubmitButtonAction> {
  bool isSubmitActive() {
    if (widget._image.isNotEmpty &&
        widget._titleController.text.isNotEmpty &&
        widget._ingredientsController.text.isNotEmpty &&
        widget._instructionsController.text.isNotEmpty) {
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        if (isSubmitActive() == true) {
          late final newDish = Dish(
            title: widget._titleController.text,
            purchasePlace: 'No place',
            dishColor: AppColors.generateRandomColor().value,
            ingredients: widget._ingredientsController.text,
            instructions: widget._instructionsController.text,
            image: widget._image,
            dishImage: widget._image,
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
        } else {
          await showDialog(
            context: context,
            builder: (context) {
              return const RequaredFieldsDialog();
            },
          );
        }
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
