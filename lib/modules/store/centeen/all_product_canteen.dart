import 'package:demo/models/consumer_product.dart';
import 'package:flutter/material.dart';

import '../../../models/canteen_product.dart';
import '../product_componunt/product_componunt.dart';

class AllProductCanteen extends StatelessWidget {
  const AllProductCanteen({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisExtent: 240,
      ),
      itemCount: canteenproducts.length,
      itemBuilder: (context, index) => ProductComponunt(
        itemIndex: index,
        product: consumerproducts[index],
      ),
    );
  }
}
