import 'package:ecommerce/core/style/text_styles.dart';
import 'package:ecommerce/features/sell/presentation/presentation_logic_holders/sell_presentation_logic_holders.dart';
import 'package:ecommerce/features/sell/presentation/widgets/shirt_size_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ShirtSizes extends StatefulWidget {
  const ShirtSizes({super.key, required this.sellState});
  final SellState sellState;

  @override
  State<ShirtSizes> createState() => _ShirtSizesState();
}

class _ShirtSizesState extends State<ShirtSizes> {
  double size = 2.5;
  @override
  Widget build(BuildContext context) {
    var l10n = AppLocalizations.of(context)!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(l10n.size, style: heading1),
        Slider(
          value: size,
          onChanged: (_) {
            HapticFeedback.heavyImpact();
            setState(() {
              size = _;
              debugPrint(_.toString());
              widget.sellState.shirtSize = shirtSizes[size.ceil()]['alphaSizing'];
              widget.sellState.shirtSize = shirtSizes[size.ceil()]['alphaSizing'];
            });
          },
          divisions: shirtSizes.length,
          label: shirtSizes[size.ceil()]['alphaSizing'],
          min: 0,
          max: shirtSizes.length - 1,
        )
      ],
    );
  }
}
