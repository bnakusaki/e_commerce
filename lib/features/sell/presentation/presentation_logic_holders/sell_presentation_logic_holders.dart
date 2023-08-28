import 'package:ecommerce/features/shirt/domain/entities/brands.dart';
import 'package:ecommerce/features/shirt/domain/entities/categories.dart';
import 'package:ecommerce/features/shirt/domain/entities/shirt.dart';
import 'package:ecommerce/features/shirt/presentation/bloc.dart';
import 'package:ecommerce/features/shirt/shirt_injection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class SellState extends ChangeNotifier {
  final bloc = sl<ShirtBloc>();

  // Shirt Category
  Categories _shirtCategory = Categories.none;
  set shirtCategory(Categories category) {
    _shirtCategory = category;
  }

  // Shirt Brand
  Brands _shirtBrand = Brands.none;
  set shirtBrand(Brands brand) {
    _shirtBrand = brand;
  }

  // Shirt Size
  String _shirtSize = '';
  set shirtSize(String size) {
    _shirtSize = size;
  }

  // Shirt Color
  String _shirtColor = '';
  set shirtColor(String color) {
    _shirtColor = color;
  }

  // quantity
  int _quantity = 0;
  set quantity(int quantity) {
    _quantity = quantity;
  }

  // price
  String _price = '';
  set price(String price) {
    _price = price;
  }

// images
  final List _images = [];
  set images(XFile image) {
    _images.add(image);
  }

  putShirt() async {
    debugPrint('===============================================================');
    debugPrint(_shirtCategory.toString());
    debugPrint('===============================================================');
    debugPrint(_shirtSize);
    debugPrint(_shirtColor);
    debugPrint(_shirtBrand.toString());
    debugPrint(_price);
    debugPrint(_quantity.toString());
    debugPrint(_images.toString());
    debugPrint('===============================================================');
    Shirt shirt = Shirt(
      category: _shirtCategory,
      size: _shirtSize,
      color: _shirtColor,
      brand: _shirtBrand,
      price: _price,
      quantity: _quantity,
      images: _images,
    );

    await bloc.putShirt(shirt);
  }
}
