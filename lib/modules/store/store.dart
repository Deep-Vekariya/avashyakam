// ignore_for_file: unused_element

import 'package:demo/modules/store/centeen/all_product_canteen.dart';
import 'package:demo/modules/store/product_componunt/store_switch.dart';
import 'package:flutter/material.dart';

import 'consumer/all_product_consumer.dart';

class StoreScreen extends StatefulWidget {
  const StoreScreen({super.key});

  @override
  State<StoreScreen> createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  List<Widget> pages = <Widget>[
    const AllProductConsumer(),
    const AllProductCanteen()
  ];
  int currentIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            // main body padding
            padding:
                const EdgeInsets.only(top: 50.0, right: 5, left: 5, bottom: 0),
            child: Container(
              height: 45,
              decoration: BoxDecoration(
                color: const Color(0xffB3E8E5),
                borderRadius: BorderRadius.circular(10),
              ),
              child: StoreSwitch(
                items: const ['Canteen', 'Consumer'],
                currentIndex: currentIndex,
                onTap: (index) {
                  setState(
                    () {
                      currentIndex = index;
                    },
                  );
                },
              ),
            ),
          ),

          // change curent product according to slider
          pages[currentIndex]
        ],
      ),
    );
  }
}
