import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/failures/failure.dart';
import 'package:ecommerce/features/shirt/domain/entities/shirt.dart';
import 'package:ecommerce/features/shirt/domain/repositories/shirt_repository.dart';

class PutShirt {
  final ShirtRepository repository;
  PutShirt(this.repository);

  Future<Either<Failure, Shirt>> call(Shirt shirt) {
    return repository.putShirt(shirt);
  }
}
