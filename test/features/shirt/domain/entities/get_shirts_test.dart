import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'package:ecommerce/core/failures/failure.dart';
import 'package:ecommerce/features/shirt/domain/entities/brands.dart';
import 'package:ecommerce/features/shirt/domain/entities/categories.dart';
import 'package:ecommerce/features/shirt/domain/entities/shirt.dart';
import 'package:ecommerce/features/shirt/domain/repositories/shirt_repository.dart';
import 'package:ecommerce/features/shirt/domain/use_cases.dart/put_shirts.dart';

class MockShirtRepository extends Mock implements ShirtRepository {}

void main() {
  late MockShirtRepository mockShirtRepository;
  late PutShirt useCase;

  setUp(() {
    mockShirtRepository = MockShirtRepository();
    useCase = PutShirt(mockShirtRepository);
  });

  Shirt tshirt = Shirt(
    category: Categories.shortSleeves.name,
    size: 'size',
    color: 'color',
    brand: Brands.adidas.name,
    price: '30',
    quantity: 1,
    // images: const [],
  );

  test('entities work with putShirt on the right\n repository works on the right', () async {
    // arrange.
    when(() => mockShirtRepository.putShirt(tshirt)).thenAnswer((_) async => Right(tshirt));

    // act.
    final result = await useCase(tshirt);

    // assert.
    expect(result, equals(Right(tshirt)));
  });

  test('entities work with putShirt on the left', () async {
    // arrange.
    when(() => MockShirtRepository().putShirt(tshirt)).thenAnswer((_) async => Left(Failure('Failed to place shirt in inventory')));

    // act.
    final result = await useCase(tshirt);

    // assert.
    expect(result, equals(Left(Failure('Failed to place shirt in inventory'))));
  });
}
