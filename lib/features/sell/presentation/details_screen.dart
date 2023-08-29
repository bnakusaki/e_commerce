import 'package:ecommerce/features/shirt/domain/entities/shirt.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key, this.shirt});
  final Shirt? shirt;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(shirt.toString()),
      ),
    );
  }
}
