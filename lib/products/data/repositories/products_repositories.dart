import 'package:injectable/injectable.dart';
import 'package:task_elevate/products/data/data_source/remote/products_remote_data_source.dart';
import 'package:dartz/dartz.dart';
import 'package:task_elevate/products/data/models/products.dart';
import 'package:task_elevate/shared/error/exception.dart';
import 'package:task_elevate/shared/error/failure.dart';

@singleton
class ProductsRepositories {
  final ProductsRemoteDataSource _remoteDataSource;

  ProductsRepositories(this._remoteDataSource);

  Future<Either<Failure, List<Products>>> getProducts() async {
    try {
      return Right(await _remoteDataSource.getProducts());
    } on AppException catch (e) {
      return Left(Failure(e.message));
    }
  }
}
