import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "About",
          style: GoogleFonts.italiana(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            decorationThickness: 10,
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20),
            child: Text(
              'A E-Commerce app built using Flutter for a jwellery store.\n\nAll the images are sourced from the internet\n\nFonts is sourced from google fonts (italiana)\n\nLogo: AI generated using Bing\n\nDependencies: \n\tflutter_native_splash\n\tgoogle_fonts\n\tgoogle_nav_bar\n\tprovider',
              style: GoogleFonts.italiana(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 20, bottom: 40),
            child: Text(
              '\t\t\t\t\tGithub:@tejas-s-u\nLinkedIn: tejas-s-u-47655b222',
              style: GoogleFonts.italiana(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
