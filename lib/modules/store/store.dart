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
  TextEditingController textEditingController = TextEditingController();
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
    double wsize = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              // main body padding
              padding:
                  const EdgeInsets.only(top: 0, right: 5, left: 5, bottom: 0),
              child: Container(
                height: 45,
                decoration: BoxDecoration(
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

            // search and cart

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, right: 5, left: 5),
                  child: Container(
                    width: wsize - 60,
                    child: TextField(
                      controller: textEditingController,
                      cursorColor: Colors.black,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        hintText: "Search",
                        hintStyle: TextStyle(color: Colors.black45),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.shopping_cart_outlined,
                    size: 35,
                  ),
                ),
              ],
            ),

            // change curent product according to slider
            pages[currentIndex]
          ],
        ),
      ),
    );
  }
}
