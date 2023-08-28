import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/failures/failure.dart';
import 'package:ecommerce/features/shirt/domain/entities/shirt.dart';

abstract class ShirtRepository {
  /// Creates a shirt object
  Future<Either<Failure, Shirt>> putShirt(Shirt shirt);
}
