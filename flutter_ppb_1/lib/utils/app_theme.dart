import 'package:flutter/material.dart';
import 'package:flutter_ppb_1/utils/app_color.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.white,
      canvasColor: Colors.black,
      cardColor: AppColor.appLightCardColor,
      textTheme: TextTheme(
        displayLarge: GoogleFonts.aBeeZee(
          fontSize: 35,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        displayMedium: GoogleFonts.aBeeZee(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        displaySmall: GoogleFonts.aBeeZee(
          fontSize: 26,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        bodyLarge: GoogleFonts.aBeeZee(
          fontSize: 50,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        bodyMedium: GoogleFonts.aBeeZee(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
        // bodySmall: GoogleFonts.aBeeZee(
        //   fontSize: 18,
        //   fontWeight: FontWeight.bold,
        //   color: Colors.black,
        // ),
      ));

  static ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.black,
      canvasColor: Colors.white,
      cardColor: AppColor.appDarkCardColor,
      textTheme: TextTheme(
        displayLarge: GoogleFonts.aBeeZee(
          fontSize: 35,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        displayMedium: GoogleFonts.aBeeZee(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        displaySmall: GoogleFonts.aBeeZee(
          fontSize: 26,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        bodyLarge: GoogleFonts.aBeeZee(
          fontSize: 50,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        bodyMedium: GoogleFonts.aBeeZee(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        // bodySmall: GoogleFonts.aBeeZee(
        //   fontSize: 18,
        //   fontWeight: FontWeight.bold,
        //   color: Colors.white,
        // ),
      ));
}
