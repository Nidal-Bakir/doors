import 'package:flutter/material.dart';

const _fontTitilliumWeb = 'TitilliumWeb';
const _fontSukar = 'Sukar';
String _fontFamilyName = _fontTitilliumWeb;
const _yalow = const Color(0xFFFECE2E);
const _black = Colors.black;
const _white = Colors.white;
const _grayWhite = const Color(0xFFF0F0F0);
const _redError = Colors.red;

ThemeData defaultLightTheme(String langCode) {
  _fontFamilyName = langCode == 'ar' ? _fontSukar : _fontTitilliumWeb;

  return ThemeData(
      colorScheme: const ColorScheme.light(
          primary: _yalow,
          secondary: _black,
          surface: _white,
          onSurface: _grayWhite,
          error: _redError),
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: _yalow,
      ),
      snackBarTheme: const SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
        backgroundColor: _redError,
        actionTextColor: _white,
        contentTextStyle: TextStyle(
          color: _white,
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
          ),
          foregroundColor: MaterialStateProperty.all(_yalow),
          backgroundColor: MaterialStateProperty.all(_black),
          minimumSize: MaterialStateProperty.all(
            const Size(150, 35),
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        contentPadding:
            const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        hintStyle: TextStyle(
          fontFamily: _fontFamilyName,
        ),
        isDense: true,
        fillColor: _grayWhite,
        filled: true,
        suffixIconColor: _black,
        border: const OutlineInputBorder(
          gapPadding: 0.0,
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
      ),
      cardTheme: const CardTheme(
        color: _white,
        elevation: 10,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: _black, width: 0.35),
          borderRadius: BorderRadius.all(
            Radius.circular(15.0),
          ),
        ),
      ),
      textTheme: textTheme());
}

TextTheme textTheme() {
  return TextTheme(
    headline4: TextStyle(
      fontSize: 28,
      color: _black,
      fontFamily: _fontFamilyName,
      fontWeight: FontWeight.bold,
    ),
    headline5: TextStyle(
      fontSize: 24,
      color: _black,
      fontFamily: _fontFamilyName,
      fontWeight: FontWeight.bold,
    ),
    headline6: TextStyle(
      fontSize: 18,
      fontFamily: _fontFamilyName,
      fontWeight: FontWeight.bold,
    ),
    subtitle1: TextStyle(fontSize: 16, fontFamily: _fontFamilyName),
    subtitle2: TextStyle(
      fontSize: 16,
      fontFamily: _fontFamilyName,
      fontWeight: FontWeight.w700,
    ),
    bodyText1: TextStyle(
      fontSize: 14,
      fontFamily: _fontFamilyName,
    ),
    bodyText2: TextStyle(
      fontSize: 14,
      fontFamily: _fontFamilyName,
      fontWeight: FontWeight.w700,
      wordSpacing: 0.9,
    ),
  );
}
