import 'package:flutter/material.dart';

import '../theme/colors.dart';

class FooterView extends StatelessWidget {
  const FooterView({super.key});

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
          height: 50,
        )
      ],
    );
  }
}
