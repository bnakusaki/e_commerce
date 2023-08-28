import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:ecommerce/core/sizes.dart';
import 'package:ecommerce/core/widgets/custom_app_bar.dart';
import 'package:ecommerce/core/widgets/white_spaces.dart';
import 'package:ecommerce/features/sell/presentation/presentation_logic_holders/sell_presentation_logic_holders.dart';
import 'package:ecommerce/features/sell/presentation/widgets/custom_textfield.dart';
import 'package:ecommerce/features/sell/presentation/widgets/image_picker.dart';
import 'package:ecommerce/features/sell/presentation/widgets/shirt_brand.dart';
import 'package:ecommerce/features/sell/presentation/widgets/shirt_categories.dart';
import 'package:ecommerce/features/sell/presentation/widgets/shirt_sizes.dart';

class AddToInventory extends StatefulWidget {
  const AddToInventory({super.key});

  @override
  State<AddToInventory> createState() => _AddToInventoryState();
}

class _AddToInventoryState extends State<AddToInventory> {
  // Handles properties of new inventory Item.
  SellState sellState = SellState();

  // Text field controllers.
  TextEditingController colorController = TextEditingController();
  TextEditingController quantityController = TextEditingController();
  TextEditingController priceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var l10n = AppLocalizations.of(context)!;

    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);
        // sellState.hasValue.value = false;

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        appBar: customAppBar(context, l10n.sell),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: horizontalScreenMargin),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(borderRaduis),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  /// Headroom for then Form.
                  whiteSpace(height: 30),

                  /// Form
                  /// 1. [ShirtCategoryField].
                  /// 2. [ShirtBrandField].
                  /// 3. [ShirtColorField].
                  /// 4. [StockingQuantityField].
                  /// 5. [ShirtPriceField].
                  /// 6. [ImagesField].

                  ShirtCategoryField(sellState: sellState),
                  whiteSpace(height: 10),

                  ShirtBrandField(sellState: sellState),
                  whiteSpace(height: 10),

                  ShirtSizes(sellState: sellState),
                  whiteSpace(height: 10),

                  CustomTextField(
                    label: l10n.color,
                    controller: colorController,
                    onChanged: (p0) {
                      sellState.shirtColor = p0;
                    },
                  ),
                  whiteSpace(height: 10),

                  CustomTextField(
                    label: l10n.quantity,
                    controller: quantityController,
                    onChanged: (p0) {
                      sellState.quantity = int.parse(p0);
                    },
                    keyboardType: TextInputType.number,
                  ),
                  whiteSpace(height: 10),

                  CustomTextField(
                    label: l10n.price,
                    controller: priceController,
                    onChanged: (p0) {
                      sellState.price = p0;
                    },
                    keyboardType: TextInputType.number,
                  ),
                  whiteSpace(height: 10),
                  ShirtImagesSelector(sellState: sellState),
                  whiteSpace(height: 80),
                ],
              ),
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: () async {
          sellState.putShirt();
        }),
      ),
    );
  }
}
