import 'package:flutter/material.dart';

import 'food.dart';

class Shop extends ChangeNotifier{
  // food menu

 final List<Food> _foodMenu = [
    // salmon sushi
    Food(name: "Salmon Sushi", price: "21.00", imagePath: "lib/image/salmon_sushi.png", rating: "4.9"),
    // tuna
    Food(name: "Tuna", price: "23.00", imagePath: "lib/image/tuna.png", rating: "4.3"),

  ];

  
final List <Food> _cart = [];

List<Food> get foodMenu => _foodMenu;
List<Food> get cart => _cart;

void addToCart(Food foodItem, int quality){
  for(int i = 0; i<quality; i++){
    _cart.add(foodItem);
  }
  notifyListeners();
}

void removeFromCart(Food food){
  _cart.remove(food);
  notifyListeners();
}
}