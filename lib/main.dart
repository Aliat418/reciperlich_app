import 'package:flutter/material.dart';

import 'home/main_food_page.dart';

void main() {
  runApp(const ReciperlichApp());
}

class ReciperlichApp extends StatelessWidget {
  const ReciperlichApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ReciperlichApp',
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: const MainFoodPage(),
    );
  }
}
