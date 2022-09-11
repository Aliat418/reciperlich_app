import 'package:flutter/material.dart';

//import '../data/dishes_repository.dart';
import '../data/dishes_repository.dart';
import '../model/dish.dart';
import '../theme/fonts.dart';

class DishView extends StatefulWidget {
  final Dish dish;

  const DishView({
    required this.dish,
    super.key,
  });

  @override
  State<DishView> createState() => _DishViewState();
}

class _DishViewState extends State<DishView> {
  final DishesRepo diseshRepo = DishesRepo();
  late final List<Dish> dishes = diseshRepo.getAll();

  // @override
  // void initState() {
  //   diseshRepo.update(widget.dish);
  //   super.initState();
  // }
  // void _refreshList() {
  //   setState(() {});
  // }

  void newDish() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(
        context,
        '/recipe_page',
        arguments: widget.dish,
      ),
      child: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(left: 20, right: 20),
            decoration: BoxDecoration(
              color: widget.dish.dishColor,
              borderRadius: const BorderRadius.all(
                Radius.elliptical(15, 15),
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TitleText(text: widget.dish.title),
                      const SizedBox(height: 5),
                      DescriptionText(text: widget.dish.purchasePlace),
                    ],
                  ),
                ),
                Image.asset(widget.dish.image),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// import 'package:flutter/material.dart';

// import '../model/dish.dart';
// import '../theme/fonts.dart';

// class DishView extends StatelessWidget {
//   final Dish dish;

//   const DishView(
//     this.dish, {
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       onTap: () => Navigator.pushNamed(
//         context,
//         '/recipe_page',
//         arguments: dish,
//       ),
//       child: Stack(
//         children: [
//           Container(
//             padding: const EdgeInsets.only(left: 20, right: 20),
//             decoration: BoxDecoration(
//               color: dish.dishColor,
//               borderRadius: const BorderRadius.all(
//                 Radius.elliptical(15, 15),
//               ),
//             ),
//             child: Row(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: [
//                 Expanded(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.stretch,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       TitleText(text: dish.title),
//                       const SizedBox(height: 5),
//                       DescriptionText(text: dish.purchasePlace),
//                     ],
//                   ),
//                 ),
//                 Image.asset(dish.image),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
