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
  String _shirtCategory = Categories.none.name;
  set shirtCategory(Categories category) {
    _shirtCategory = category.name;
  }

  // Shirt Brand
  String _shirtBrand = Brands.none.name;
  set shirtBrand(Brands brand) {
    _shirtBrand = brand.name;
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
  // final List _images = [];
  // set images(XFile image) {
  // _images.add(image);
  // }
  // Indicator of progress
  bool _puttingShirt = false;

  bool get puttingShirt => _puttingShirt;

  putShirt() async {
    Shirt shirt = Shirt(
      category: _shirtCategory,
      size: _shirtSize,
      color: _shirtColor,
      brand: _shirtBrand,
      price: _price,
      quantity: _quantity,
      // images: _images,
    );
    _puttingShirt = true;
    notifyListeners();
    final result = await bloc.putShirt(shirt);
    _puttingShirt = false;
    notifyListeners();
    return result;
  }
}
