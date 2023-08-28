import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:ecommerce/core/navigation/routes.dart';

void main() {
  testWidgets(
    'sell button.',
    (WidgetTester tester) async {
      // arrange
      await tester.pumpWidget(
        MaterialApp.router(
          localizationsDelegates: AppLocalizations.localizationsDelegates,
          supportedLocales: AppLocalizations.supportedLocales,
          locale: const Locale('en'),
          routerConfig: routes,
        ),
      );

      // act
      await tester.tap(find.text('Sell'));

      // assert
      expect(find.text('Sell'), findsOneWidget);

      /// [AddToInventory]
      expect(find.text('Category'), findsOneWidget);
      expect(find.text('Brand'), findsOneWidget);
      expect(find.text('Size'), findsOneWidget);
      expect(find.text('Color'), findsOneWidget);
      expect(find.text('Quantity'), findsOneWidget);
      expect(find.text('Price'), findsOneWidget);
      expect(find.text('data'), findsOneWidget);
    },
  );
}
