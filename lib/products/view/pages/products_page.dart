import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:task_elevate/products/view/widgets/product_item.dart';

@singleton
class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products Page'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.82,
        ),
        itemBuilder: (context, index) => const ProductItem(),
        itemCount: 10,
      ),
    );
  }
}
