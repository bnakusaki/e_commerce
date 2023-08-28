import 'package:ecommerce/core/sizes.dart';
import 'package:flutter/material.dart';

class ShirtSizeScreen extends StatelessWidget {
  const ShirtSizeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [for (Map<String, dynamic> shirtSize in shirtSizes) BuildSizeItem(shirtSize: shirtSize)],
      ),
    );
  }
}

class BuildSizeItem extends StatelessWidget {
  const BuildSizeItem({super.key, required this.shirtSize});
  final Map<String, dynamic> shirtSize;

  @override
  Widget build(BuildContext context) {
    debugPrint(shirtSize['scale'].toString());
    return SizedBox(
      height: shortestSide(context) * 0.1, //shirtSize['scale'],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            shirtSize['alphaSizing'],
          ),
          Text(shirtSize['info']['sleeve'])
        ],
      ),
    );
  }
}

List<Map<String, dynamic>> shirtSizes = [
  {
    'alphaSizing': 'XS',
    'scale': 0.1,
    'info': {
      'neck': '13" - 13 1/2"',
      'sleeve': 32,
      'chest': '32" - 34"',
      'waist': '26" - 28"',
    },
  },
  {
    'alphaSizing': 'S',
    'scale': 0.2,
    'info': {
      'neck': '14" - 14 1/2"',
      'sleeve': 33,
      'chest': '35" - 37"',
      'waist': '29" - 31"',
    },
  },
  {
    'alphaSizing': 'M',
    'scale': 0.3,
    'info': {
      'neck': '15" - 15 1/2"',
      'sleeve': 34,
      'chest': '38" - 40"',
      'waist': '32" - 34"',
    },
  },
  {
    'alphaSizing': 'L',
    'scale': 0.5,
    'info': {
      'neck': '16" - 16 1/2"',
      'sleeve': 35,
      'chest': '41" - 43"',
      'waist': '35" - 37"',
    },
  },
  {
    'alphaSizing': 'XL',
    'scale': 0.5,
    'info': {
      'neck': '17" - 17 1/2"',
      'sleeve': 36,
      'chest': '44" - 46"',
      'waist': '38" - 40"',
    },
  },
  {
    'alphaSizing': 'XXL',
    'scale': 0.5,
    'info': {
      'neck': '18" - 18 1/2"',
      'sleeve': 36.5,
      'chest': '47" - 49"',
      'waist': '41" - 43"',
    },
  },
];
