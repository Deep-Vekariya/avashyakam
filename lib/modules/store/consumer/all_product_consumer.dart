import 'package:flutter/cupertino.dart';
import '../../../models/consumer_product.dart';
import '../product_componunt/product_componunt.dart';

class AllProductConsumer extends StatelessWidget {
  const AllProductConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 250,
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
