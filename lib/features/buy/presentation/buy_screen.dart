import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:ecommerce/core/widgets/custom_app_bar.dart';
import 'package:ecommerce/features/buy/presentation/widgets/widgets.dart';
import 'package:ecommerce/features/shirt/domain/entities/shirt.dart';

class BuyScreen extends StatefulWidget {
  const BuyScreen({super.key});

  @override
  State<BuyScreen> createState() => _BuyScreenState();
}

class _BuyScreenState extends State<BuyScreen> {
  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: customAppBar(context, l10n.buy),
      body: StreamBuilder(
        stream: FirebaseFirestore.instance.collection('shirts').snapshots(),
        builder: (context, stream) {
          final List<Shirt> shirts = [];
          if (!stream.hasData) return const Center(child: CircularProgressIndicator());
          for (final document in stream.data!.docs) {
            final docData = document.data();
            shirts.add(
              Shirt(
                category: docData['category'],
                size: docData['size'],
                color: docData['color'],
                brand: docData['brand'],
                price: l10n.priceValue(int.parse(docData['price'])),
                quantity: docData['quantity'],
              ),
            );
          }
          return ShirtItems(shirts: shirts);
        },
      ),
    );
  }
}
