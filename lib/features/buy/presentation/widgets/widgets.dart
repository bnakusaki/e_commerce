import 'package:ecommerce/core/sizes.dart';
import 'package:ecommerce/core/style/colors.dart';
import 'package:ecommerce/core/style/text_styles.dart';
import 'package:ecommerce/features/shirt/domain/entities/brands.dart';
import 'package:ecommerce/features/shirt/domain/entities/categories.dart';
import 'package:ecommerce/features/shirt/domain/entities/shirt.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ShirtItems extends StatelessWidget {
  const ShirtItems({super.key, required this.shirts});
  final List<Shirt> shirts;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        for (final shirt in shirts) ShirtItem(shirt: shirt),
      ],
    );
  }
}

class ShirtItem extends StatelessWidget {
  const ShirtItem({super.key, required this.shirt});
  final Shirt shirt;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    Map? brandInfo = shirtBrands[0];
    Map? categoryInfo = shirtCategories[0];
    Brands.nike.name;
    for (Map brand in shirtBrands) {
      if ((brand['content'] as Brands).name == shirt.brand) {
        brandInfo = brand;
      }
    }
    for (Map category in shirtCategories) {
      if ((category['content'] as Categories).name == shirt.category) {
        categoryInfo = category;
      }
    }

    return Container(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: horizontalScreenMargin),
      height: shortestSide(context) * 0.3,
      decoration: BoxDecoration(color: white, borderRadius: BorderRadius.circular(borderRaduis)),
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: AnimatedContainer(
                duration: const Duration(microseconds: 500),
                height: shortestSide(context) * 0.09,
                child: Image.asset(
                  brandInfo!['logo'],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  PropertyItem(property: l10n.category, value: categoryInfo!['name']),
                  PropertyItem(property: l10n.size, value: shirt.size),
                  PropertyItem(property: l10n.color, value: shirt.color),
                  PropertyItem(property: l10n.price, value: shirt.price),
                  PropertyItem(property: l10n.quantity, value: shirt.quantity.toString()),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PropertyItem extends StatelessWidget {
  const PropertyItem({super.key, required this.property, required this.value});
  final String property;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          property,
          style: bodyHeading0,
        ),
        Text(
          value,
          style: bodyText0,
        ),
      ],
    );
  }
}
