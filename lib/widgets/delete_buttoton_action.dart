import 'package:flutter/material.dart';

import '../model/dish.dart';
import '../theme/colors.dart';
import '../theme/fonts.dart';
import '../utils/alert_dialogs.dart';

class DeleteButtonAction extends StatelessWidget {
  final int index;
  final Dish dish;

  const DeleteButtonAction({
    required this.index,
    required this.dish,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<int>(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(15),
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
                fontSize: 20,
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
        _showDialog(context, index);
      },
      child: const Icon(
        color: AppColors.mediumPurple,
        Icons.more_vert,
      ),
    );
  }

  void _showDialog(BuildContext context, int index) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return DeleteDialog(
          index: index,
        );
      },
    );
  }
}
