import 'package:flutter/material.dart';

class CanteenConsumerSlider extends StatefulWidget {
  const CanteenConsumerSlider({Key? key}) : super(key: key);

  @override
  State<CanteenConsumerSlider> createState() => _CanteenConsumerSliderState();
}

class _CanteenConsumerSliderState extends State<CanteenConsumerSlider> {
  List<String> items = ["Consumer", "canteen"];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    double size = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Padding(
        // main body padding
        padding: const EdgeInsets.only(top: 50.0, right: 5, left: 5, bottom: 0),
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              Container(
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: ListView.builder(
                  itemCount: items.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              currentIndex = index;
                            });
                          },
                          child: AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            width: (size / 2) - 5,
                            height: 45,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: currentIndex == index
                                  ? Colors.white70
                                  : Colors.green,
                              border: currentIndex == index
                                  ? Border.all(
                                      color: Colors.black,
                                      width: 2,
                                    )
                                  : null,
                            ),
                            child: Center(
                              child: Text(
                                items[index],
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
