import 'package:hive/hive.dart';

import '../model/dish.dart';

class DishesRepo {
  DishesRepo._();
  static Box<Dish>? dishesBox;

  static Future<Box<Dish>> _getBox() async {
    dishesBox ??= await Hive.openBox<Dish>('dishesBox');
    return dishesBox!;
  }

  static Future<List<Dish>> getAll() async {
    final dishesBox = await _getBox();
    return dishesBox.values.toList();
  }

  static Future<void> insert(Dish dish) async {
    final dishesBox = await _getBox();
    await dishesBox.add(dish);
  }

  static Future<void> delete(int index) async {
    final dishesBox = await _getBox();
    await dishesBox.deleteAt(index);
  }
}
