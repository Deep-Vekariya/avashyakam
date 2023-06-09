import 'package:flutter/material.dart';
import '../../../models/product.dart';
import '../product_componunt/product_componunt.dart';

class Canteen extends StatelessWidget {
  const Canteen({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 240,
        ),
        itemCount: consumerproducts.length,
        itemBuilder: (context, index) => ProductComponunt(
          itemIndex: index,
          product: consumerproducts[index],
        ),
      ),
    );
  }
}
