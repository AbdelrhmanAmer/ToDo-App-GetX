import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'constants.dart';

class Themes {
  static final light = ThemeData(
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: kPrimaryColor,
      onPrimary: Colors.black,
      background: Colors.white,
      secondary: Color(0xFFE7E8EA),
      onSecondary: Colors.pinkAccent,
      error: Colors.red,
      onError: Colors.redAccent,
      onBackground: Colors.white70,
      surface: Colors.white,
      onSurface: Colors.black87,
    ),
    textTheme: buildTextTheme(),
    appBarTheme: buildAppBarTheme(),
    inputDecorationTheme: buildLightInputDecorationTheme(),
  );

  static final dark = ThemeData(
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: kPrimaryColor,
      onPrimary: Colors.white,
      background: Colors.black,
      secondary: Color(0xFF232228),
      onSecondary: Colors.pinkAccent,
      error: Colors.red,
      onError: Colors.redAccent,
      onBackground: Colors.white70,
      surface: Colors.black,
      onSurface: Colors.white70,
    ),
    textTheme: buildTextTheme(),
    appBarTheme: buildAppBarTheme(),
    inputDecorationTheme: buildDarkInputDecorationTheme(),
  );
}

TextTheme buildTextTheme() {
  return const TextTheme().copyWith(
    headlineLarge: GoogleFonts.lato(
        textStyle: const TextStyle(fontWeight: FontWeight.w600, fontSize: 30)),
    headlineMedium: GoogleFonts.lato(
        textStyle: const TextStyle(fontWeight: FontWeight.w500, fontSize: 26)),
    headlineSmall: GoogleFonts.lato(
        textStyle: const TextStyle(fontWeight: FontWeight.w500, fontSize: 23)),
    titleLarge: GoogleFonts.lato(
        textStyle: const TextStyle(fontWeight: FontWeight.w500, fontSize: 22)),
    titleMedium: GoogleFonts.lato(
        textStyle: const TextStyle(fontWeight: FontWeight.w500, fontSize: 20)),
    titleSmall: GoogleFonts.lato(
        textStyle: const TextStyle(fontWeight: FontWeight.w400, fontSize: 18)),
    bodyLarge: GoogleFonts.lato(
        textStyle: const TextStyle(fontWeight: FontWeight.w400, fontSize: 18)),
    bodyMedium: GoogleFonts.lato(
        textStyle: const TextStyle(fontWeight: FontWeight.w400, fontSize: 16)),
    bodySmall: GoogleFonts.lato(
        textStyle: const TextStyle(
            fontWeight: FontWeight.w300, fontSize: 15, height: 1.3)),
    labelLarge: GoogleFonts.lato(
        textStyle: const TextStyle(fontWeight: FontWeight.w300, fontSize: 15)),
    labelMedium: GoogleFonts.lato(
        textStyle: const TextStyle(fontWeight: FontWeight.w300, fontSize: 14)),
    labelSmall: GoogleFonts.lato(
        textStyle: const TextStyle(fontWeight: FontWeight.w200, fontSize: 12)),
  );
}

AppBarTheme buildAppBarTheme() {
  return AppBarTheme(
    centerTitle: true,
    titleTextStyle: GoogleFonts.lato(
      textStyle: const TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.w400,
      ),
    ),
  );
}

InputDecorationTheme buildLightInputDecorationTheme() {
  var outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: const BorderSide(color: Colors.black87,width: 1.5),
  );
  return InputDecorationTheme(
    border: outlineInputBorder,
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    disabledBorder: outlineInputBorder,
    contentPadding:
        const EdgeInsets.symmetric(horizontal: kDefaultPadding, vertical: 16),
  );
}
InputDecorationTheme buildDarkInputDecorationTheme() {
  var outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(16),
    borderSide: const BorderSide(color: Colors.white70, width: 1.5),
  );
  return InputDecorationTheme(
    border: outlineInputBorder,
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    disabledBorder: outlineInputBorder,
    contentPadding:
        const EdgeInsets.symmetric(horizontal: kDefaultPadding, vertical: 16),
  );
}
