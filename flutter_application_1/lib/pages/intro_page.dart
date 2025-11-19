import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/button.dart';






class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    
    return  Scaffold(
      backgroundColor: primaryColor,
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [

            const SizedBox(height: 25),
            // Shop Name
            Text("SUSHI MAN",
             style: GoogleFonts.dmSerifDisplay(
              fontSize: 28,
              color: Colors.white,
            ),),

            const SizedBox(height: 25),
            // Icon
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.asset('lib/image/salmon_eggs.png'),
            ),
            // Title
            Text("JAPON YEMEKLERİNİN ENFES TADI",style: GoogleFonts.dmSerifDisplay(
              fontSize: 44,
              color: Colors.white,
            ),),
            
            const SizedBox(height: 10),

            // Subtitle
            Text("En popüler Japon yemeklerinin tadını her yerde ve her zaman hissedin",
            style: TextStyle(
              color: Colors.grey[300],
              height: 2,
            ),
            
            ),

            const SizedBox(height: 25),
            // get started button
            MyButton(text: "Başlayın",
            onTap: (){
              // go to menu page
              Navigator.pushNamed(context, '/menupage');
            },
            )
        ],),
      ),
    );
  }
}