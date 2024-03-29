import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class theme {
  static const backGroundSystemDesign = BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color.fromRGBO(16, 49, 63, 1),
        Color.fromRGBO(35, 94, 110, 1),
        Color.fromRGBO(40, 119, 124, 1),
        Color.fromRGBO(44, 139, 135, 1),
        Color.fromRGBO(47, 146, 145, 1),
        Color.fromRGBO(65, 110, 109, 1)
      ],
    ),
  );

  static final styleText = GoogleFonts.roboto(
    color: Colors.white,
    fontSize: 16,
  );

  static final styleTextItemBoxWidget = GoogleFonts.roboto(
    color: Colors.black,
    fontSize: 17,
    fontWeight: FontWeight.bold,
  );

  static final buttonStyle = ElevatedButton.styleFrom(
    backgroundColor: const Color.fromARGB(255, 131, 204, 135),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(30),
    ),
  );
}
