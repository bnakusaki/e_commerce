import 'package:ecommerce/core/style/colors.dart';
import 'package:ecommerce/core/style/text_styles.dart';
import 'package:flutter/material.dart';

ThemeData get themeData => _themeData;

ThemeData _themeData = ThemeData(
  appBarTheme: _appBarTheme,
  pageTransitionsTheme: _pageTransitionsTheme,
  inputDecorationTheme: _inputDecorationTheme,
);

/// AppBar Theme
AppBarTheme _appBarTheme = AppBarTheme(
  backgroundColor: air,
  shadowColor: air,
  titleTextStyle: heading0,
  centerTitle: false,
  iconTheme: IconThemeData(color: primaryColor),
);

/// PageTransition Theme
PageTransitionsTheme _pageTransitionsTheme = const PageTransitionsTheme(builders: {
  TargetPlatform.android: FadeUpwardsPageTransitionsBuilder(),
  TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
});

/// InputDecoration Theme
InputDecorationTheme _inputDecorationTheme = InputDecorationTheme(
  border: const OutlineInputBorder(),
  focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: primaryColor, width: 2)),
  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: primaryColor)),
  disabledBorder: OutlineInputBorder(borderSide: BorderSide(color: lightBlack0)),
  errorBorder: OutlineInputBorder(borderSide: BorderSide(color: errorColor)),
  focusedErrorBorder: OutlineInputBorder(borderSide: BorderSide(color: errorColor, width: 2)),
);
