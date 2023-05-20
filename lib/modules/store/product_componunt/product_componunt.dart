import 'package:demo/models/consumer_product.dart';
import 'package:flutter/material.dart';

class ProductComponunt extends StatelessWidget {
  const ProductComponunt({
    super.key,
    required this.itemIndex,
    required this.product,
  });

  final int itemIndex;
  final ConsumerProduct product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      // main container of item
      child: Container(
        // width: 170,
        // height: 230,
        decoration: BoxDecoration(
          color: Colors.grey[400],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            // 1st container for image
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 130,
                decoration: BoxDecoration(
                  // color: Colors.red,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset(
                  product.image,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            const Spacer(),
            // 2nd part for text
            Padding(
              padding: const EdgeInsets.only(
                  left: 10.0, right: 10.0, top: 0.0, bottom: 12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //  product title
                  Text(
                    product.name,
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.7),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.start,
                  ),

                  const SizedBox(height: 10),
                  // prise and add button
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // price of product
                      Text(
                        product.price,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      // add icon
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black,
                        ),
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      )
                      //
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
