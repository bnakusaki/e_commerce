import 'package:flutter/material.dart';

class AppState extends ChangeNotifier {
  // Locale state holder of the app.
  static Locale _locale = const Locale('en');

  // Returns the current locale state of the app.
  Locale get locale {
    return _locale;
  }

  // Sets a new locale for the app.
  set setLocale(Locale locale) {
    _locale = locale;
    notifyListeners();
  }
}
