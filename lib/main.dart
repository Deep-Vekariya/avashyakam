import 'package:flutter/material.dart';

import 'demo.dart';
import 'modules/store/canteen_consumer_slider.dart';
import 'modules/store/centeen/all_product_canteen.dart';
import 'modules/store/centeen/special/special.dart';
import 'modules/store/store.dart';
import 'modules/store/consumer/all_product_consumer.dart';
import 'modules/store/consumer/catagory.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StoreScreen(),
    );
  }
}
