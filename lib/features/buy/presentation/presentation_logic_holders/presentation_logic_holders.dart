import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'package:ecommerce/features/shirt/domain/entities/shirt.dart';

class BuyState extends ChangeNotifier {
  // holds all shirt objects.
  final List<Shirt> _response = [];

  // getter for the private response list
  List<Shirt> get shirts => _response;

  /// Fetches shirts info from Cloud Firestore and feeds it to [_reponse]
  // getShirts() {
  // .listen((event) {
  // for (final document in event.docs) {
  // _response.add(
  // Shirt(
  // category: document.data()['category'],
  // size: document.data()['size'],
  // color: document.data()['color'],
  // brand: document.data()['brand'],
  // price: document.data()['price'],
  // quantity: document.data()['quantity'],
  // ),
  // );
  // notifyListeners();
  // }
  // });
  // }
}
