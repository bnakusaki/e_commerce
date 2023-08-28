import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/failures/exceptions.dart';
import 'package:ecommerce/core/failures/failure.dart';
import 'package:ecommerce/features/shirt/data/data_source/remote_data_source.dart';
import 'package:ecommerce/features/shirt/domain/entities/shirt.dart';
import 'package:ecommerce/features/shirt/domain/repositories/shirt_repository.dart';

class ShirtRepositoryImpl implements ShirtRepository {
  final RemoteDataSource remoteDataSource;

  ShirtRepositoryImpl(this.remoteDataSource);

  @override
  Future<Either<Failure, Shirt>> putShirt(Shirt shirt) async {
    try {
      final response = await remoteDataSource.putShirt(shirt);
      return Right(response);
    } on PutShirtException catch (error) {
      return Left(Failure(error.message));
    }
  }
}
