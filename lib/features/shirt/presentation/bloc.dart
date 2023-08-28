import 'package:ecommerce/features/shirt/domain/entities/shirt.dart';
import 'package:ecommerce/features/shirt/domain/use_cases.dart/put_shirts.dart';

class ShirtBloc {
  ShirtBloc({required this.putShirt});

  final PutShirt putShirt;

  Future<Shirt> put(Shirt shirt) async {
    final response = await putShirt(shirt);
    return response.fold((failure) => Shirt.initial(), (success) => success);
  }
}
