import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/cart_page.dart';
import 'package:flutter_application_1/pages/intro_page.dart';
import 'package:flutter_application_1/pages/menu_page.dart';
import 'package:flutter_application_1/pages/login_page.dart';
import 'package:flutter_application_1/pages/settings_page.dart'; // ← BUNU EKLE
import 'package:provider/provider.dart';
import 'package:flutter_application_1/pages/new_product_page.dart';

import 'models/shop.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => Shop(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  debugShowCheckedModeBanner: false,
  home: const LoginPage(),
  routes: {
    '/intropage': (context) => const IntroPage(),
    '/menupage': (context) => const MenuPage(),
    '/cartpage': (context) => const CartPage(),
    '/settings': (context) => const SettingsPage(),
    '/login': (context) => const LoginPage(),
    '/newproduct': (context) => const NewProductPage(),

  },
);

  }
}
