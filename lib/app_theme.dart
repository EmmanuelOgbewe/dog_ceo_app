import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Themes {
  static const kBgBeigePrimary = Color(0xFFfff0db);
  static const kBeigeAccentColor = Color(0xFFe1ad01);

  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
    scaffoldBackgroundColor: kBgBeigePrimary,
    fontFamily: 'Nunito',
    textTheme: GoogleFonts.nunitoTextTheme().copyWith(
      headlineMedium: GoogleFonts.nunito(),
    ),
    appBarTheme: AppBarTheme(
        backgroundColor: kBeigeAccentColor,
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
        titleTextStyle: GoogleFonts.nunito(color: Colors.white, fontSize: 20)),
    colorScheme: ColorScheme.fromSeed(seedColor: kBgBeigePrimary),
  );
}
