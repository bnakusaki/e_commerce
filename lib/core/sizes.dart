import 'package:flutter/material.dart';

// Shortest side.
double shortestSide(BuildContext context) => MediaQuery.of(context).size.shortestSide;

// Screen Height.
double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;

// Screen Width.
double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;

// Boarder Radii
double _boarderRaduis = 5.0;
double get borderRaduis => _boarderRaduis;

// Margins
double _horizontalScreenMargin = 15;
double get horizontalScreenMargin => _horizontalScreenMargin;
