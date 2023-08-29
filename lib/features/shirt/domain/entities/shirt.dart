import 'package:ecommerce/features/shirt/domain/entities/brands.dart';
import 'package:ecommerce/features/shirt/domain/entities/categories.dart';
import 'package:equatable/equatable.dart';

/// Will take data about the shirt.
/// 1. Category.
/// 2. Size.
/// 3. Color.
/// 4. Brand.
/// 5. Price.
/// 6. Quatity.
/// 7. Images.
/// 8. If not a registered user, follow with authentication forms.

class Shirt extends Equatable {
  final String category;
  final String size;
  final String color;
  final String brand;
  final String price;
  final int quantity;
  // final List images;

  const Shirt({
    required this.category,
    required this.size,
    required this.color,
    required this.brand,
    required this.price,
    required this.quantity,
    // required this.images,
  });

  /// Initial value for a shirt
  factory Shirt.initial() => Shirt(
        category: Categories.none.name,
        size: '',
        color: '',
        brand: Brands.none.name,
        price: '',
        quantity: 0,
        // images: const [],
      );

  Map<String, dynamic> toJson() => {
        'category': category,
        'size': size,
        'color': color,
        'brand': brand,
        'price': price,
        'quantity': quantity,
        // 'images': images,
      };

  @override
  List<Object?> get props => [
        category,
        size,
        color,
        brand,
        price,
        quantity,
        // images,
      ];
}
