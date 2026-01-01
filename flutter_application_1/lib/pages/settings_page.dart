import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../theme/colors.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("Ayarlar"),
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.grey[800],
      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // Profil bölümü
            Text(
              "Hesap",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 24,
                color: Colors.grey[900],
              ),
            ),
            const SizedBox(height: 15),

            _buildSettingTile(Icons.person, "Profil Bilgileri"),
            _buildSettingTile(Icons.lock, "Şifre Değiştir"),
            _buildSettingTile(Icons.notifications, "Bildirim Ayarları"),

            const SizedBox(height: 30),

            // Uygulama bölümü
            Text(
              "Uygulama",
              style: GoogleFonts.dmSerifDisplay(
                fontSize: 24,
                color: Colors.grey[900],
              ),
            ),
            const SizedBox(height: 15),

            _buildSettingTile(Icons.color_lens, "Tema Seçimi (Koyu/Açık)"),
            _buildSettingTile(Icons.language, "Dil Ayarları"),
            _buildSettingTile(Icons.info_outline, "Uygulama Hakkında"),

            const Spacer(),

            Center(
              child: Text(
                "SUSHI MAN",
                style: TextStyle(color: Colors.grey[600]),
              ),
            )
          ],
        ),
      ),
    );
  }

  // AYAR HÜCRE TASARIMI
  Widget _buildSettingTile(IconData icon, String title) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Icon(icon, color: primaryColor, size: 26),
          const SizedBox(width: 15),
          Text(
            title,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[800],
              fontWeight: FontWeight.w500,
            ),
          ),
          const Spacer(),
          Icon(Icons.arrow_forward_ios, size: 18, color: Colors.grey[500]),
        ],
      ),
    );
  }
}
