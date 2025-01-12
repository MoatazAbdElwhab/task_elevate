import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_elevate/products/data/models/products.dart';
import 'package:task_elevate/products/data/repositories/products_repositories.dart';

part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit(this._productsRepositories) : super(ProductsInitial());

  final ProductsRepositories _productsRepositories;

  Future<void> getProducts() async {
    emit(GetProductsLoading());
    final result = await _productsRepositories.getProducts();
    result.fold(
      (failure) => emit(GetProductsError(failure.message)),
      (products) => emit(GetProductsSuccess(products)),
    );
  }
}
