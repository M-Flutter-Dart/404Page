import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Would change all these later.
class AppTheme {
  //Change maybe to poppins or montesarrat soon or lato
  static TextTheme lightTextTheme = TextTheme(
    //The headline large is for Large headlines in mt app. Maybe for appBar titles
    headlineLarge: GoogleFonts.poppins(
      fontSize: 21.0,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
    //The headline medium is for names or headlines of cards, like names
    headlineMedium: GoogleFonts.poppins(
      fontSize: 18.0,
      fontWeight: FontWeight.w400,
      color: Colors.black,
    ),

    //This is for More focuses details
    bodyMedium: GoogleFonts.poppins(
      fontSize: 17.0,
      fontWeight: FontWeight.w300,
      color: Colors.black,
    ),

    //This is for little further details about a resource
    bodySmall: GoogleFonts.poppins(
      fontSize: 15.0,
      fontWeight: FontWeight.w300,
      color: Colors.black,
    ),
  );

  static TextTheme darkTextTheme = TextTheme(
    //The headline large is for Large headlines in mt app. Maybe for appBar titles
    headlineLarge: GoogleFonts.poppins(
      fontSize: 21.0,
      fontWeight: FontWeight.w500,
      color: Colors.white,
    ),
    //The headline medium is for names or headlines of cards, like names
    headlineMedium: GoogleFonts.poppins(
      fontSize: 18.0,
      fontWeight: FontWeight.w400,
      color: Colors.white,
    ),

    //This is for More focuses details
    bodyMedium: GoogleFonts.poppins(
      fontSize: 17.0,
      fontWeight: FontWeight.w300,
      color: Colors.white,
    ),

    //This is for little further details about a resource
    bodySmall: GoogleFonts.poppins(
      fontSize: 15.0,
      fontWeight: FontWeight.w300,
      color: Colors.white,
    ),
  );

  static ThemeData light() {
    return ThemeData(
        dialogBackgroundColor: Colors.white,
        primaryColor: Colors.blue,
        brightness: Brightness.light,
        primaryColorLight: Colors.white,
        cardColor: Colors.white,
        checkboxTheme: CheckboxThemeData(
          fillColor: MaterialStateColor.resolveWith((states) {
            return Colors.black;
          }),
        ),
        appBarTheme: const AppBarTheme(
          //foregroundColor: Colors.white,
          backgroundColor: Colors.blue,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        scaffoldBackgroundColor: Colors.grey.shade50,
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          foregroundColor: Colors.white,
          backgroundColor: Colors.black,
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          selectedItemColor: Colors.red,
          // unselectedItemColor: Colors.white,
          backgroundColor: Colors.white,
        ),
        textTheme: lightTextTheme,
        inputDecorationTheme: const InputDecorationTheme(
          fillColor: Colors.white,
        ));
  }

  static ThemeData dark() {
    return ThemeData(
        dialogBackgroundColor: Colors.black,
        cardColor: Colors.black,
        scaffoldBackgroundColor: Colors.black,
        brightness: Brightness.dark,
        primaryColorDark: Colors.black,
        appBarTheme: const AppBarTheme(
          foregroundColor: Colors.white,
          backgroundColor: Colors.black,
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue,
        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: Colors.blue,
        ),
        textTheme: darkTextTheme,
        inputDecorationTheme: const InputDecorationTheme(
          fillColor: Colors.black,
        ));
  }
}
