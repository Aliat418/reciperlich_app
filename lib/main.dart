import 'package:flutter/material.dart';
import 'pages/main_food_page.dart';

void main() => runApp(const ReciperlichApp());

class ReciperlichApp extends StatelessWidget {
  const ReciperlichApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ReciperlichApp',
      theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      home: MainFoodPage(),
    );
  }
}
