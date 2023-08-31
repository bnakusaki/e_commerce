import 'package:ecommerce/features/shirt/domain/entities/shirt.dart';

abstract class RemoteDataSource {
  // puts shirt in store
  Future<Shirt> putShirt(Shirt shirt);
}
