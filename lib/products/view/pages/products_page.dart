import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
            return LayoutBuilder(
              builder: (context, constraints) {
                final width = constraints.maxWidth;
                final itemWidth = width / 2;
                const desiredItemHeight = 280.0;
                final aspectRatio = itemWidth / desiredItemHeight;

                return GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: aspectRatio,
                  ),
                  itemBuilder: (context, index) => ProductItem(
                    products: state.products[index],
                  ),
                  itemCount: state.products.length,
                );
              },
            );
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}
