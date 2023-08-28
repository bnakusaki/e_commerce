import 'package:ecommerce/core/navigation/routes.dart';
import 'package:ecommerce/core/style/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ecommerce/features/shirt/shirt_injection.dart' as shirt_injection;

void main() async {
  shirt_injection.initShirts();
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const ECommerce());
}

class ECommerce extends StatelessWidget {
  const ECommerce({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'e-commerce',
      theme: themeData,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        AppLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'),
        Locale('fr'),
      ],
      locale: const Locale('en'),
      routerConfig: routes,
    );
  }
}
