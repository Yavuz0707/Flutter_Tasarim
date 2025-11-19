import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/button.dart';
import 'package:flutter_application_1/components/food_title.dart';
import 'package:flutter_application_1/models/shop.dart';
import 'package:flutter_application_1/pages/food_details_page.dart';
import 'package:flutter_application_1/theme/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPage();
}

class _MenuPage extends State<MenuPage> {
  // navigate to food item details page
  void navigateToFoodDetails(int index) {
    final shop = context.read<Shop>();
    final foodMenu = shop.foodMenu;

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FoodDetailsPage(
          food: foodMenu[index],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final shop = context.read<Shop>();
    final foodMenu = shop.foodMenu;

    return Scaffold(
      backgroundColor: Colors.grey[300],

      // ---------------- DRAWER (SOLDAKİ ÜÇ ÇİZGİ MENÜSÜ) ----------------
      drawer: Drawer(
        child: Container(
          color: Colors.grey[100],
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // ÜST BAŞLIK KISMI
              DrawerHeader(
                decoration: BoxDecoration(
                  color: primaryColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "SUSHI MAN",
                      style: GoogleFonts.dmSerifDisplay(
                        fontSize: 26,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      "Japon mutfağının enfes tadı",
                      style: TextStyle(
                        color: Colors.grey[200],
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),

              // ANA SAYFA
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text("Ana Sayfa"),
                onTap: () {
                  Navigator.pop(context); // sadece drawer'ı kapat
                },
              ),

              // AYARLAR
              ListTile(
                leading: const Icon(Icons.settings),
                title: const Text("Ayarlar"),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/settings');
                },
              ),

              // YENİ ÜRÜN EKLE
              ListTile(
                leading: const Icon(Icons.add_box_outlined),
                title: const Text("Yeni Ürün Ekle"),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/newproduct');
                },
              ),

              // SEPET
              ListTile(
                leading: const Icon(Icons.shopping_cart),
                title: const Text("Sepetim"),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/cartpage');
                },
              ),

              const Spacer(),

              // ALTTA KÜÇÜK YAZI
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "SUSHI MAN",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey[600],
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      // ---------------- APPBAR ----------------
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.grey[800],
        elevation: 0,
        // leading'i vermiyoruz; drawer olduğu için flutter otomatik
        // sol üstte üç çizgili ikon (hamburger) gösterecek.
        title: const Text("Tokyo"),

        actions: [
          // AYARLAR
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/settings');
            },
            icon: const Icon(Icons.settings),
          ),

          // YENİ ÜRÜN
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/newproduct');
            },
            icon: const Icon(Icons.add_box_outlined),
          ),

          // SEPET
          IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/cartpage');
            },
            icon: const Icon(Icons.shopping_cart),
          ),
        ],
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // ---------------- PROMO BANNER ----------------
          Container(
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 25),
            padding: const EdgeInsets.all(25),
            clipBehavior: Clip.hardEdge,
            child: Row(
              children: [
                // SOL TARAF
                Expanded(
                  flex: 2,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '%32 İndirimden Yararlanın',
                        style: GoogleFonts.dmSerifDisplay(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 20),
                      MyButton(
                        text: "Kullanın",
                        onTap: () {},
                      ),
                    ],
                  ),
                ),

                // SAĞ TARAF (RESİM)
                Expanded(
                  flex: 1,
                  child: Image.asset(
                    'lib/image/many_sushi.png',
                    fit: BoxFit.contain,
                    height: 100,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 25),

          // ---------------- SEARCH BAR ----------------
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: TextField(
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.white),
                  borderRadius: BorderRadius.circular(20),
                ),
                hintText: "Ara...",
              ),
            ),
          ),

          const SizedBox(height: 25),

          // ---------------- MENU LIST TITLE ----------------
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              "Yemek Menü",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey[800],
                fontSize: 18,
              ),
            ),
          ),

          const SizedBox(height: 10),

          // ---------------- HORIZONTAL FOOD LIST ----------------
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: foodMenu.length,
              itemBuilder: (context, index) => FoodTitle(
                food: foodMenu[index],
                onTap: () => navigateToFoodDetails(index),
              ),
            ),
          ),

          const SizedBox(height: 25),

          // ---------------- POPULAR FOOD ----------------
          Container(
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(20),
            ),
            margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'lib/image/salmon_eggs.png',
                      height: 60,
                    ),
                    const SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Salmon Eggs",
                          style: GoogleFonts.dmSerifDisplay(fontSize: 18),
                        ),
                        const SizedBox(height: 10),
                        Text(
                          '\$21.00',
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ],
                    ),
                  ],
                ),
                const Icon(
                  Icons.favorite_outline,
                  color: Colors.grey,
                  size: 28,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
