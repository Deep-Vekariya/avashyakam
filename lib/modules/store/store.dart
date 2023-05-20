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
  List<String> items = ["Consumer", "canteen"];
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
    double size = MediaQuery.of(context).size.width;

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
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: StoreSwitch(
                  items: const ['Canteen', 'Consumer'],
                  currentIndex: currentIndex,
                  onTap: (index) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                )),
          ),

          // how to change state from current index
          pages[currentIndex]
        ],
      ),

      // body: Padding(
      //   padding: const EdgeInsets.only(top: 50.0),
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       SizedBox(
      //           width: (width / 2) - 10,
      //           height: 50,
      //           child: OutlinedButton(
      //             style: OutlinedButton.styleFrom(
      //               backgroundColor: Colors.black,
      //               foregroundColor: Colors.amberAccent,
      //             ),
      //             onPressed: () {},
      //             child: const Text("Canteen"),
      //           )),
      //       SizedBox(
      //           width: (width / 2) - 10,
      //           height: 50,
      //           child: OutlinedButton(
      //             style: OutlinedButton.styleFrom(
      //               foregroundColor: Colors.amberAccent,
      //               backgroundColor: Colors.black, //<-- SEE HERE
      //             ),
      //             onPressed: () {},
      //             child: const Text("Consumer"),
      //           )),
      //     ],
      //   ),
      // ),
    );
  }
}
