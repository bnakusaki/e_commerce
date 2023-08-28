// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:ecommerce/features/shirt/data/data_source/remote_data_source_impl.dart';
// import 'package:ecommerce/features/shirt/data/repository/shirt_repository_impl.dart';
// import 'package:ecommerce/features/shirt/domain/entities/brands.dart';
// import 'package:ecommerce/features/shirt/domain/entities/categories.dart';
// import 'package:ecommerce/features/shirt/domain/entities/shirt.dart';
// import 'package:ecommerce/features/shirt/domain/use_cases.dart/put_shirts.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:mocktail/mocktail.dart';

// void main() {
//   late PutShirt useCase;
//   late ShirtRepositoryImpl repository;
//   late RemoteDataSourceImpl dataSource;

//   setUp(() {
//     dataSource = RemoteDataSourceImpl();
//     repository = ShirtRepositoryImpl(dataSource);
//     useCase = PutShirt(repository);
//   });
//   Shirt shirt = const Shirt(
//     category: Categories.none,
//     size: 'size',
//     color: 'color',
//     brand: Brands.none,
//     price: 'price',
//     quantity: 1,
//     images: [],
//   );

//   test('Shirt object is stored in cloud firestore', () async {
//     // arrange

//     // act
//     final response = await useCase(shirt);

//     // assert
//     verify(() => repository.putShirt(shirt)).called(1);
//     verify(() => dataSource.putShirt(shirt)).called(1);

//     expect(response.runtimeType, equals(DocumentReference));
//   });
// }
