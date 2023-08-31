import 'package:ecommerce/features/shirt/data/data_source/remote_data_source.dart';
import 'package:ecommerce/features/shirt/data/data_source/remote_data_source_impl.dart';
import 'package:ecommerce/features/shirt/data/repository/shirt_repository_impl.dart';
import 'package:ecommerce/features/shirt/domain/repositories/shirt_repository.dart';

import 'package:ecommerce/features/shirt/domain/use_cases.dart/put_shirts.dart';
import 'package:ecommerce/features/shirt/presentation/bloc.dart';
import 'package:get_it/get_it.dart';

final sl = GetIt.instance;

void initShirts() {
  sl
    ..registerFactory(() => ShirtBloc(putShirt: sl()))
    ..registerLazySingleton<RemoteDataSource>(RemoteDataSourceImpl.new)
    ..registerLazySingleton<ShirtRepository>(() => ShirtRepositoryImpl(sl()))
    ..registerLazySingleton<PutShirt>(() => PutShirt(sl()));
}
