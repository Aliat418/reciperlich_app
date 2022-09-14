import 'package:flutter/material.dart';

import '../data/dishes_repository.dart';
import '../model/dish.dart';
import '../theme/colors.dart';
import '../theme/fonts.dart';
import '../utils/alert_dialogs.dart';

class DeleteButtonAction extends StatelessWidget {
  final Dish dish;
  final List<Dish> dishes = DishesRepo.getAll();

  DeleteButtonAction({
    required this.dish,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<int>(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(90),
        ),
      ),
      itemBuilder: (context) => [
        PopupMenuItem(
          padding: const EdgeInsets.all(10),
          value: 1,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              CustomText(
                text: 'Delete recipe',
                fontSize: 19,
                fontWeight: FontWeight.bold,
                color: AppColors.pastelPink,
              ),
            ],
          ),
        ),
      ],
      color: Colors.white,
      elevation: 15,
      onSelected: (value) {
        _showDialog(context);
      },
      child: const Icon(
        color: AppColors.mediumPurple,
        Icons.more_vert,
      ),
    );
  }

  void _showDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return DeleteDialog(
          dish: dish,
        );
      },
    );
  }
}
