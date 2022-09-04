import 'package:flutter/material.dart';
import 'package:reciperlich_app/theme/colors.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RichText(
          text: const TextSpan(
            children: <TextSpan>[
              TextSpan(
                text: 'Made with ❤️ by ',
                style: TextStyle(
                  color: AppColors.darkPurple,
                ),
              ),
              TextSpan(
                text: 'raywendelich.com',
                style: TextStyle(
                  color: AppColors.darkGreen,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 45)
      ],
    );
  }
}
