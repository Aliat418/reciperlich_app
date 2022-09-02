import 'package:flutter/material.dart';
import 'home/main_food_page.dart';

void main() => runApp(const ReciperlichApp());

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



// theme: ThemeData.light().copyWith(
      //   primaryColor: Colors.purple,
      //   colorScheme: ColorScheme.fromSwatch().copyWith(secondary: Colors.amber),
      // ),???