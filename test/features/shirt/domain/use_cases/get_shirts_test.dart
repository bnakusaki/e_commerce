// import 'package:dartz/dartz.dart';
// import 'package:ecommerce/features/shirt/domain/entities/shirt.dart';
// import 'package:ecommerce/features/shirt/domain/entities/shirts.dart';
// import 'package:ecommerce/features/shirt/domain/repositories/shirt_repository.dart';
// import 'package:ecommerce/features/shirt/domain/use_cases.dart/get_shirts.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:mocktail/mocktail.dart';

// class MockShirtRepository extends Mock implements ShirtRepository {}

// void main() {
//   late MockShirtRepository mockRepository;
//   late GetShirts useCase;

//   setUp(() {
//     mockRepository = MockShirtRepository();

//     useCase = GetShirts(mockRepository);
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
//   test('Data fetched through shirts repository', () async {
//     // arrange
//     when(() => mockRepository.getShirts()).thenAnswer((_) async => Right(tshirts));

//     // act
//     final result = await useCase();

//     // assert
//     verify(() => mockRepository.getShirts()).called(1);

//     expect(result, Right(tshirts));
//   });
// }
