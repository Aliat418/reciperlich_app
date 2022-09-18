import 'package:flutter/material.dart';

import '../theme/colors.dart';

class AddImageView extends StatelessWidget {
  const AddImageView({
    required this.newImagePath,
    super.key,
  });

  final String newImagePath;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          '🍜 Add image',
          style: TextStyle(
            color: AppColors.darkPurple,
            fontSize: 20,
            fontWeight: FontWeight.normal,
          ),
        ),
        Visibility(
          visible: newImagePath != '',
          child: const Icon(
            Icons.check,
            color: AppColors.pastelPink,
          ),
        ),
      ],
    );
  }
}
