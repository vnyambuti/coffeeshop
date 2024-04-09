import 'package:coffee/models/coffee.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class CoffeeShop extends ChangeNotifier{
  //list of coffee
final List<Coffee> _shop=[
Coffee(name: "Long Black", imagePath: "lib/images/black.png", price: 4.50),
Coffee(name: "Espresso", imagePath: "lib/images/expresso.png", price: 2.50),
Coffee(name: "Iced Coffee", imagePath: "lib/images/iced-coffee.png", price: 950),
Coffee(name: "Latte", imagePath: "lib/images/latte.png", price: 3.50),
];

  //cart

 List <Coffee> _cart=[];
  //get coffee list

List<Coffee> get coffeeShop =>_shop;
  //get cart list

List<Coffee> get getCart=>_cart;

  //add to cart
void addtoCart(Coffee coffee){
  _cart.add(coffee);
  notifyListeners();
}

  //remove from cart
  void removeCart(Coffee coffee){
    _cart.remove(coffee);
    notifyListeners();
  }
}