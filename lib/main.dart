import 'package:ecommerce/core/navigation/routes.dart';
import 'package:ecommerce/core/state/app_state.dart';
import 'package:ecommerce/core/style/theme.dart';
import 'package:ecommerce/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:ecommerce/features/shirt/shirt_injection.dart' as shirt_injection;

final AppState _appState = AppState();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  /// Initializations of all dependency injections
  shirt_injection.initShirts();

  runApp(const ECommerce());
}

class ECommerce extends StatefulWidget {
  const ECommerce({super.key});

  @override
  State<ECommerce> createState() => _ECommerceState();
}

class _ECommerceState extends State<ECommerce> {
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
      locale: _appState.locale,
      routerConfig: routes,
    );
  }
}
