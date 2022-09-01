// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class FooterWidget extends StatelessWidget {
  const FooterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text('Made with ❤️ by raywendelich.com'),
      SizedBox(height: 45)
    ]);
  }
}
