import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:ecommerce/features/shirt/data/data_source/remote_data_source.dart';
import 'package:ecommerce/features/shirt/domain/entities/shirt.dart';
import 'package:ecommerce/firebase_options.dart';

class RemoteDataSourceImpl implements RemoteDataSource {
  @override
  Future<Shirt> putShirt(Shirt shirt) async {
    WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

    final documentID = FirebaseFirestore.instance.collection('shirts').doc();
    final id = {'id': documentID.id};

    await FirebaseFirestore.instance.collection('shirts').doc(documentID.id).set(shirt.toJson()..addAll(id));
    return shirt;
  }
}
