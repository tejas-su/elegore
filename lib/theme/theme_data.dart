import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

ThemeData lightMode = ThemeData(
  useMaterial3: true,
  appBarTheme: const AppBarTheme(
    elevation: 0,
    systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark),
  ),
);
ThemeData darkMode = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  appBarTheme: const AppBarTheme(
    elevation: 0,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.light,
    ),
  ),
);
