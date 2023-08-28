import 'package:ecommerce/core/sizes.dart';
import 'package:flutter/material.dart';

// Primary colors.
const _primaryColor = Color.fromARGB(255, 42, 89, 178);
get primaryColor => _primaryColor;

// Others
const _air = Color.fromARGB(0, 0, 0, 0);
get air => _air;

const _white = Color.fromARGB(255, 255, 255, 255);
get white => _white;

const _lightBlack0 = Colors.black26;
get lightBlack0 => _lightBlack0;

const _lightBlack1 = Colors.black38;
get lightBlack1 => _lightBlack1;

// Error
const _errorColor = Colors.red;
get errorColor => _errorColor;

// Shadow
List<BoxShadow> _shadow = [
  BoxShadow(
    color: Colors.black26,
    spreadRadius: 2,
    blurRadius: borderRaduis,
    offset: const Offset(0, 4),
  ),
];

List<BoxShadow> get shadow => _shadow;
