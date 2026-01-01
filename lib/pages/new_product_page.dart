import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../theme/colors.dart';

class NewProductPage extends StatelessWidget {
  const NewProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.grey[800],
        title: const Text("Yeni Ürün Ekle"),
      ),

      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text(
              "Ürün Bilgileri",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 28,
                color: Colors.grey[900],
              ),
            ),

            const SizedBox(height: 25),

            // Ürün Adı
            _buildInput("Ürün Adı"),

            const SizedBox(height: 20),

            // Ürün Fiyatı
            _buildInput("Fiyat (USD)"),

            const SizedBox(height: 20),

            // Ürün Resim Yolu
            _buildInput("Resim Yolu (image path)"),

            const SizedBox(height: 20),

            // Ürün Puanı
            _buildInput("Puan (4.5, 4.9…)"),

            const SizedBox(height: 40),

            // Kaydet Butonu
            GestureDetector(
              onTap: () {},
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 18),
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(25),
                ),
                width: double.infinity,
                child: const Center(
                  child: Text(
                    "Kaydet",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Input kutusu tasarımı
  Widget _buildInput(String hint) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        filled: true,
        fillColor: Colors.grey[100],
        contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
