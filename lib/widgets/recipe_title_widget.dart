import 'package:flutter/material.dart';

import '../model/dish.dart';
import '../theme/fonts.dart';

// class DishTextWidget extends StatelessWidget {
//   final Dish dish;
//   final double fontSize;
//   final String text;
//   final FontWeight fontWeight;
//   final Color color;
//   //final MainAxisAlignment mainAxisAlignment;

//   const DishTextWidget({
//     required this.dish,
//     required this.fontSize,
//     required this.text,
//     required this.fontWeight,
//     required this.color,
//     //required this.mainAxisAlignment,
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: double.maxFinite,
//       padding: const EdgeInsets.all(15),
//       color: dish.dishColor,
//       child: Row(
//         //mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Expanded(
//             child: CustomText(
//               fontSize: fontSize,
//               fontWeight: fontWeight,
//               color: color,
//               text: text,
//               //mainAxisAlignment: mainAxisAlignment,
//             ),
//           )
//           //TitleText(text: dish.title),
//         ],
//       ),
//     );
//   }
// }

class TitleWidget extends StatelessWidget {
  final Dish dish;

  const TitleWidget({
    required this.dish,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: const EdgeInsets.all(15),
      color: dish.dishColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TitleText(text: dish.title),
        ],
      ),
    );
  }
}
