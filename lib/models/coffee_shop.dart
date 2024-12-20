import 'package:flutter/material.dart';
import 'coffee.dart';

class CoffeeShop extends ChangeNotifier {
  final List<Coffee> _shop = [
    Coffee(
      name: 'Black Coffee',
      price: "250",
      imagepath: "lib/images/blackcoffee.png",
    ),
    Coffee(
      name: 'Latte',
      price: "270",
      imagepath: "lib/images/latte.png",
    ),
    Coffee(
      name: 'Expresso',
      price: "240",
      imagepath: "lib/images/expresso.png",
    ),
    Coffee(
      name: 'Expresso + Donut',
      price: "300",
      imagepath: "lib/images/donut.png",
    ),
  ];

  List<Coffee> _userCart = [];

  List<Coffee> get coffeeShop => _shop;

  List<Coffee> get userCart => _userCart;

  void addItemToCart(Coffee coffee) {
    _userCart.add(coffee);
    notifyListeners();
  }

  void removeItemFromCart(Coffee coffee) {
    _userCart.remove(coffee);
    notifyListeners();
  }
}
