// import 'package:ecommerce/features/shirt/data/data_source/remote_data_source.dart';
// import 'package:ecommerce/features/shirt/data/data_source/remote_data_source_impl.dart';
// import 'package:ecommerce/features/shirt/data/models/shirts_model.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:mocktail/mocktail.dart';

// void main() {
//   late RemoteDataSourceImpl dataSource;

//   setUp(() {
//     dataSource = RemoteDataSourceImpl();
//   });

//   test('data fetched from firebase', () async {
//     // arrange

//     // act
//     final result = await dataSource.getShirts();

//     // assert
//     verify(() => dataSource.getShirts()).called(1);
//     expect(result, equals(const ShirtsModel(shirts: [])));
//   });
// }
