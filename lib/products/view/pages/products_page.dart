import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@singleton
class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Products Page'),
      ),
      body: const Center(
        child: Text('Products Page'),
      ),
    );
  }
}
