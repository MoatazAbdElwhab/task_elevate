import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_elevate/products/view/widgets/product_item.dart';
import 'package:task_elevate/products/view_model/cubit/products_cubit.dart';
import 'package:task_elevate/shared/di/service_locator.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    getIt<ProductsCubit>().getProducts();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products Page'),
      ),
      body: BlocBuilder<ProductsCubit, ProductsState>(
        builder: (context, state) {
          if (state is GetProductsLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is GetProductsError) {
            return Center(child: Text(state.message));
          } else if (state is GetProductsSuccess) {
            return GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.82,
              ),
              itemBuilder: (context, index) => ProductItem(
                products: state.products[index],
              ),
              itemCount: state.products.length,
            );
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}
