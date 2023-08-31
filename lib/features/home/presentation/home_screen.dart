import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:go_router/go_router.dart';

import 'package:ecommerce/core/navigation/route_names.dart';
import 'package:ecommerce/core/widgets/custom_app_bar.dart';
import 'package:ecommerce/core/widgets/custom_filled_button.dart';
import 'package:ecommerce/core/widgets/custom_outlined_button.dart';
import 'package:ecommerce/core/widgets/white_spaces.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var l10n = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: customAppBar(context, null),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// Navigates to [BuyScreen]
            CustomOutlinedButton(
              label: l10n.buy,
              onTap: () => context.goNamed(RouteNames.buy),
            ),

            /// Navigates to [AddToInventory] Feature.
            whiteSpace(height: 10),
            CustomFilledButton(
              label: l10n.sell,
              onTap: () => context.goNamed(RouteNames.sell),
            ),
          ],
        ),
      ),
    );
  }
}
