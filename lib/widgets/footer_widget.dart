import 'package:flutter/material.dart';

import '../theme/colors.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      //crossAxisAlignment: CrossAxisAlignment.center,
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
                text: 'abrahadabra.ton',
                style: TextStyle(
                  color: AppColors.darkGreen,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 45,
        )
      ],
    );
  }
}
