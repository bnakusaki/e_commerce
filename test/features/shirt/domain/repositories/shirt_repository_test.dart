// import 'package:dartz/dartz.dart';
// import 'package:ecommerce/features/shirt/domain/entities/shirt.dart';
// import 'package:ecommerce/features/shirt/domain/entities/shirts.dart';
// import 'package:ecommerce/features/shirt/domain/repositories/shirt_repository.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:mocktail/mocktail.dart';

// class MockShirtRepository extends Mock implements ShirtRepository {}

// void main() {
//   late MockShirtRepository mockRepository;

//   setUp(() {
//     mockRepository = MockShirtRepository();
//   });

//   Shirt tshirt = const Shirt(
//     category: 'category',
//     size: 'size',
//     color: 'color',
//     brand: 'brand',
//     price: 'price',
//     quantity: 1,
//     images: [],
//   );

//   Shirts tshirts = Shirts(shirts: [tshirt]);

//   test('shirt repository passes correct output from the right.', () async {
//     // arrange
//     when(() => mockRepository.getShirts()).thenAnswer((_) async => Right(tshirts));

//     // act
//     final response = await mockRepository.getShirts();

//     // assert
//     verify(mockRepository.getShirts);

//     expect(response, equals(Right(tshirts)));
//   });
// }
