// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:reciperlich_app/utils/colors.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      RichText(
        text: TextSpan(children: <TextSpan>[
          TextSpan(
            text: 'Made with ❤️ by ',
            style: TextStyle(color: AppColors.darkPurple),
          ),
          TextSpan(
            text: 'raywendelich.com',
            style: TextStyle(
                color: AppColors.darkGreen, fontStyle: FontStyle.italic),
          ),
        ]),
      ),
      SizedBox(height: 45)
    ]);
  }
}
