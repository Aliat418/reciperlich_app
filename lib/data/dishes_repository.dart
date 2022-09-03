import 'package:reciperlich_app/model/dish.dart';
import 'package:reciperlich_app/theme/colors.dart';
import 'package:reciperlich_app/resources/images.dart';

class DishRepository {
  static List<Dish> getDish() => [
        Dish(
          'Pizza margarita',
          'Dominos Pizza',
          AppImages.pizza,
          AppColors.pastelGreen,
        ),
        Dish(
          'Sushi set',
          'Origami delivery',
          AppImages.sushi,
          AppColors.pastelBlue,
        ),
        Dish(
          'Classic Noodles',
          'Musashi & Co',
          AppImages.noodles,
          AppColors.pastelOrange,
        ),
        Dish(
          'Granny\'s special PanCakes',
          'PanCake market',
          AppImages.pancake,
          AppColors.pastelGreen,
        ),
        Dish(
          'Spaghetti',
          'Semifredo restaurant',
          AppImages.spaghetti,
          AppColors.pastelBlue,
        ),
        Dish(
          'Taco',
          'Brazil restaurant',
          AppImages.taco,
          AppColors.pastelOrange,
        ),
      ];
}
