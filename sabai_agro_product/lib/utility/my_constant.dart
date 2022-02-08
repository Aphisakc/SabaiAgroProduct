import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyConstant {

  static const Color primaryColor = Color(0xFF039BE5);
  static const Color primaryDarkColor = Color(0xFF006db3);
  static const Color primaryLightColor = Color(0xFF63ccff);
  static const Color secondaryColor = Color.fromARGB(255, 3, 3, 3);
  static const Color tertiaryColor = Color(0xFFFFFFFF);



  TextStyle h1Style() => GoogleFonts.ibmPlexSansThai(
    textStyle: TextStyle(
    fontSize: 14,
    color: tertiaryColor,
    fontWeight: FontWeight.bold,
    )
  );

  TextStyle h2Style() => GoogleFonts.ibmPlexSansThai(
    textStyle: TextStyle(
    fontSize: 14,
    color: tertiaryColor,
    fontWeight: FontWeight.w500,
    )
  );

  TextStyle h2blueStyle() => GoogleFonts.ibmPlexSansThai(
    textStyle: TextStyle(
    fontSize: 14,
    color: primaryColor,
    fontWeight: FontWeight.w500,
    )
  );

  TextStyle h3Style() => GoogleFonts.ibmPlexSansThai(
    textStyle: TextStyle(
    fontSize: 14,
    color: tertiaryColor,
    fontWeight: FontWeight.normal,
    )
  );
  


  
}
