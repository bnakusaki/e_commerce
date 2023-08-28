import 'package:ecommerce/core/navigation/route_names.dart';
import 'package:ecommerce/core/style/theme.dart';
import 'package:ecommerce/core/widgets/custom_app_bar.dart';
import 'package:ecommerce/core/widgets/white_spaces.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:ecommerce/core/widgets/custom_filled_button.dart';
import 'package:ecommerce/core/widgets/custom_outlined_button.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var l10n = AppLocalizations.of(context)!;
    return MaterialApp(
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      debugShowCheckedModeBanner: false,
      theme: themeData,
      home: Scaffold(
        appBar: customAppBar(context, null),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomOutlinedButton(
                label: l10n.buy,
                onTap: () {},
              ),
              whiteSpace(height: 10),
              CustomFilledButton(
                label: l10n.sell,
                onTap: () => context.goNamed(RouteNames.sell),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
