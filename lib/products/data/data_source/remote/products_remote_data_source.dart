import 'package:task_elevate/products/data/models/products.dart';

abstract class ProductsRemoteDataSource {
  Future<List<Products>> getProducts();
}
