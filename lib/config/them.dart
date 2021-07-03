import 'package:flutter/material.dart';

ThemeData theme() {
  return ThemeData(
    primaryColor: Color(0xfffe3c5b),
    primaryColorDark: Color(0xfffc0028),
    primaryColorLight: Color(0xfffe9aaa),
    scaffoldBackgroundColor: Colors.white,
    backgroundColor: Color(0xfff5f5f5),
    textTheme: TextTheme(
      headline1: TextStyle(
        color: Color(0xff1b070b),
        fontWeight: FontWeight.bold,
        fontSize: 36,
      ),
      headline2: TextStyle(
        color: Color(0xff1b070b),
        fontWeight: FontWeight.bold,
        fontSize: 24,
      ),
      headline3: TextStyle(
        color: Color(0xff1b070b),
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
      headline4: TextStyle(
        color: Color(0xff1b070b),
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
      headline5: TextStyle(
        color: Color(0xff1b070b),
        fontWeight: FontWeight.bold,
        fontSize: 14,
      ),
      headline6: TextStyle(
        color: Color(0xff1b070b),
        fontWeight: FontWeight.normal,
        fontSize: 14,
      ),
      bodyText1: TextStyle(
        color: Color(0xff1b070b),
        fontWeight: FontWeight.normal,
        fontSize: 12,
      ),
      bodyText2: TextStyle(
        color: Color(0xff1b070b),
        fontWeight: FontWeight.normal,
        fontSize: 10,
      ),
    ),
  );
}
