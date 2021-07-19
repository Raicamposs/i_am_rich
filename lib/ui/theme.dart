import 'package:flutter/material.dart';

ThemeData makeAppTheme() {
  final primaryColor = Colors.blueGrey[900];

  return ThemeData(
    primarySwatch: Colors.blueGrey,
    primaryColor: primaryColor,
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.blueGrey,
    appBarTheme: AppBarTheme(
      backgroundColor: primaryColor,
    ),
  );
}
