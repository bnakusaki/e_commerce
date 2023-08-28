import 'package:ecommerce/core/style/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// Button text styles.
TextStyle _filledButtonTextStyle = GoogleFonts.dmSans(color: white, fontWeight: FontWeight.bold);
TextStyle get filledButtonTextStyle => _filledButtonTextStyle;

TextStyle _outlinedButtonTextStyle = GoogleFonts.dmSans(color: primaryColor, fontWeight: FontWeight.bold);
TextStyle get outlinedButtonTextStyle => _outlinedButtonTextStyle;

// Headings
TextStyle _heading0 = GoogleFonts.dmSans(
  color: primaryColor,
  fontWeight: FontWeight.bold,
  fontSize: 25,
);
TextStyle get heading0 => _heading0;

TextStyle _heading1 = GoogleFonts.dmSans(
  color: primaryColor,
  fontSize: 20,
  fontWeight: FontWeight.w500,
);
TextStyle get heading1 => _heading1;

// Body text 0
TextStyle _bodyText0 = GoogleFonts.dmSans(color: primaryColor);
TextStyle get bodyText0 => _bodyText0;
