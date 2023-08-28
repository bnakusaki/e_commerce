import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:ecommerce/core/functions/custom_search_algorithm.dart';
import 'package:ecommerce/core/widgets/search_prototype/search_prototype.dart';
import 'package:ecommerce/core/widgets/white_spaces.dart';
import 'package:ecommerce/features/sell/presentation/presentation_logic_holders/sell_presentation_logic_holders.dart';
import 'package:ecommerce/features/sell/presentation/widgets/custom_textfield.dart';
import 'package:ecommerce/features/shirt/domain/entities/brands.dart';

class ShirtBrandField extends StatefulWidget {
  const ShirtBrandField({super.key, required this.sellState});
  final SellState sellState;

  @override
  State<ShirtBrandField> createState() => _ShirtBrandFieldState();
}

class _ShirtBrandFieldState extends State<ShirtBrandField> {
  final SearchState _searchState = SearchState();

  @override
  Widget build(BuildContext context) {
    var l10n = AppLocalizations.of(context)!;
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomTextField(
          label: l10n.brand,
          controller: _searchState.searchController,
          onChanged: (text) {
            for (Map x in shirtBrands) {
              if (x['name'] != text) continue;
              debugPrint(text);
              widget.sellState.shirtBrand = x['content'];
            }
            setState(() {
              _searchState.matches = customSearchAlgorithm(_searchState.searchController.text, shirtBrands);
              _searchState.hasValue.value = true;
            });
          },
        ),
        whiteSpace(height: 5),
        ValueListenableBuilder(
          valueListenable: _searchState.hasValue,
          builder: (context, hasValue, child) {
            return ResultBuilder(
              tapCallback: (p0) {
                widget.sellState.shirtBrand = p0['content'];
              },
              hasValue: hasValue,
              searchState: _searchState,
              sellState: widget.sellState,
              searchable: shirtBrands,
            );
          },
        )
      ],
    );
  }
}
