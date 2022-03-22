import 'package:flutter/material.dart';

const _fontTitilliumWeb = 'TitilliumWeb';
const _fontSukar = 'Sukar';

ThemeData defaultLightTheme(String langCode) {
  const _yalow = const Color(0xFFFECE2E);
  const _black = Colors.black;
  const _white = Colors.white;
  const _grayWhite = const Color(0xFFF0F0F0);
  const _redError = Colors.red;

  return ThemeData(
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: _yalow,
      ),
      snackBarTheme: const SnackBarThemeData(
        backgroundColor: _black,
        actionTextColor: _yalow,
        contentTextStyle: TextStyle(
          color: _redError,
        ),
      ),
      colorScheme: const ColorScheme.light(primary: _yalow, secondary: _black),
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
      inputDecorationTheme: const InputDecorationTheme(
        hintStyle: TextStyle(fontFamily: _fontTitilliumWeb),
        isDense: true,
        fillColor: _grayWhite,
        filled: true,
        suffixIconColor: _black,
        border: OutlineInputBorder(
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
      textTheme: textTheme(langCode));
}

TextTheme textTheme(String longCode) {
  String fontFamilyName = longCode == 'ar' ? _fontSukar : _fontTitilliumWeb;
  return TextTheme(
    headline5: TextStyle(fontSize: 28, fontFamily: fontFamilyName),
    bodyText1: TextStyle(fontSize: 14, fontFamily: fontFamilyName),
    bodyText2: TextStyle(
        fontSize: 14,
        fontFamily: fontFamilyName,
        fontWeight: FontWeight.w700,
        wordSpacing: 0.9),
  );
}
