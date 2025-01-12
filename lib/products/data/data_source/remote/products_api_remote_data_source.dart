import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:task_elevate/products/data/data_source/remote/products_remote_data_source.dart';
import 'package:task_elevate/products/data/models/products.dart';
import 'package:task_elevate/shared/api_constants.dart';
import 'package:task_elevate/shared/error/exception.dart';

@Singleton(as: ProductsRemoteDataSource)
class ProductsApiRemoteDataSource implements ProductsRemoteDataSource {
  final Dio _dio;

  const ProductsApiRemoteDataSource(this._dio);
  @override
  Future<List<Products>> getProducts() async {
    try {
      final response = await _dio.get(ApiConstants.productsEndpoint);

      return (response.data as List)
          .map((productJson) =>
              Products.fromJson(productJson as Map<String, dynamic>))
          .toList();
    } catch (e) {
      throw const RemoteException('Failed to get products');
    }
  }
}
