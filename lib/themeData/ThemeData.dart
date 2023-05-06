import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

  class Themedata
{
  static const Color lightcolor=Color(0xffB7935F);
  static const Color DarkColor=Color(0xffFACC1D);
  static ThemeData light=ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: lightcolor,
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(
          color: Colors.black
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,

      ),
      textTheme: TextTheme(
          bodyLarge: GoogleFonts.elMessiri(
              color: Color(0xff242424),
              fontSize: 30,
              fontWeight: FontWeight.bold
          ),  // islami
        bodyMedium: GoogleFonts.elMessiri  (
              color: Color(0xff242424),
              fontSize: 25,
              fontWeight: FontWeight.w500
          ),  // Ahadeth  - SuraName
        bodySmall: GoogleFonts.elMessiri  (
            color: Color(0xff242424),
            fontSize: 20,
            fontWeight: FontWeight.bold
        ),   // [adthe][sura name]
        labelSmall:  GoogleFonts.elMessiri  (
            color: Color(0xff242424),
            fontSize: 10,
            fontWeight: FontWeight.bold
        ),  // txt navi bar
        labelMedium:  GoogleFonts.elMessiri  (
            color: Color(0xff242424),
            fontSize: 15,
            fontWeight: FontWeight.bold
        ), //sura content


      ),
  );
  static ThemeData dark=ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: DarkColor,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
          color: Colors.white
      ),
      backgroundColor: Colors.transparent,
      centerTitle: true,
      elevation: 0,

    ),
    textTheme: TextTheme(
      bodyLarge: GoogleFonts.elMessiri(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.bold
      ),  // islami
      bodyMedium: GoogleFonts.elMessiri  (
          color: Colors.white,
          fontSize: 25,
          fontWeight: FontWeight.w500
      ),  // Ahadeth  - SuraName
      bodySmall: GoogleFonts.elMessiri  (
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold
      ),   // [adthe][sura name]
      labelSmall:  GoogleFonts.elMessiri  (
          color: Colors.black54,
          fontSize: 10,
          fontWeight: FontWeight.bold
      ), // txt navi bar
      labelMedium:  GoogleFonts.elMessiri  (
          color: Color(0xffFACC1D),
          fontSize: 15,
          fontWeight: FontWeight.bold
      ),


    ),
  );
}