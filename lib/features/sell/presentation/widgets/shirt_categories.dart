import 'package:ecommerce/core/functions/custom_search_algorithm.dart';
import 'package:ecommerce/core/widgets/search_prototype/search_prototype.dart';
import 'package:ecommerce/core/widgets/white_spaces.dart';
import 'package:ecommerce/features/sell/presentation/presentation_logic_holders/sell_presentation_logic_holders.dart';
import 'package:ecommerce/features/shirt/domain/entities/categories.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:ecommerce/features/sell/presentation/widgets/custom_textfield.dart';

class ShirtCategoryField extends StatefulWidget {
  const ShirtCategoryField({super.key, this.onSubmitted, required this.sellState});

  final Function(String)? onSubmitted;
  final SellState sellState;

  @override
  State<ShirtCategoryField> createState() => _ShirtCategoryFieldState();
}

class _ShirtCategoryFieldState extends State<ShirtCategoryField> {
  final SearchState _searchState = SearchState();
  @override
  Widget build(BuildContext context) {
    var l10n = AppLocalizations.of(context)!;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CustomTextField(
          label: l10n.category,
          controller: _searchState.searchController,
          onChanged: (text) {
            setState(() {
              _searchState.matches = customSearchAlgorithm(_searchState.searchController.text, shirtCategories);
              _searchState.hasValue.value = true;
            });
          },
        ),
        whiteSpace(height: 5),
        ValueListenableBuilder(
            valueListenable: _searchState.hasValue,
            builder: (context, hasValue, child) {
              return ResultBuilder(
                hasValue: hasValue,
                searchState: _searchState,
                sellState: widget.sellState,
                searchable: shirtCategories,
                tapCallback: (p0) {
                  debugPrint(p0['content'].toString());
                  debugPrint(Categories.longSleeves.name);
                  widget.sellState.shirtCategory = p0['content'];
                },
              );
            })
      ],
    );
  }
}
