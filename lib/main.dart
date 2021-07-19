import 'package:flutter/material.dart';
import 'package:iamrich/ui/pages/home_page.dart';
import 'package:iamrich/ui/theme.dart';

void main() {
  runApp(initApp());
}

initApp() {
  return MaterialApp(
    home: HomePage(),
    debugShowCheckedModeBanner: false,
    theme: makeAppTheme(),
  );
}
