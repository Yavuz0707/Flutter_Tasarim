import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/button.dart';
import 'package:flutter_application_1/models/food.dart';
import 'package:flutter_application_1/models/shop.dart';
import 'package:flutter_application_1/theme/colors.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  void removeFromCart(){}

  @override
  Widget build(BuildContext context) {
    return Consumer<Shop>(builder: (context , value , child) => Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(title: const Text("Sepetim"),
      elevation: 0,
      backgroundColor: primaryColor,
      ),
      body: ListView.builder(
        itemCount: value.cart.length,
        itemBuilder: (context , index){
      
       final Food food = value.cart[index];

       final String foodName = food.name;

       final String foodPrice = food.price;

       return Container(
        decoration: BoxDecoration(color: secondaryColor, borderRadius: BorderRadius.circular(8)),
        margin: const EdgeInsets.only(left: 20, top: 20, right: 20),
         child: ListTile(
          title: Text(foodName, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
          subtitle: Text(foodPrice, style: const TextStyle(color: Colors.grey), ),
          trailing: IconButton(
            icon: Icon(Icons.delete, color: Colors.grey[200],),
            onPressed: removeFromCart,
          ),
         ),
       );
          MyButton(text: "Şimdi Öde", onTap: (){},);
      },),
    ),);
  }
}