import 'package:flutter/material.dart';
import 'package:reciperlich_app/pages/main_food_page.dart';

void main() => runApp(ReciperlichApp());

class ReciperlichApp extends StatelessWidget {
  const ReciperlichApp({Key? key}) : super(key: key);

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
