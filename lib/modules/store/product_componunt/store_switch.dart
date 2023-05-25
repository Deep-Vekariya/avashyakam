import 'package:flutter/material.dart';

class StoreSwitch extends StatefulWidget {
  const StoreSwitch(
      {super.key, required this.items, required this.currentIndex, this.onTap});
  final List<String> items;
  final int currentIndex;
  final ValueChanged<int>? onTap;
  @override
  State<StoreSwitch> createState() => _StoreSwitchState();
}

class _StoreSwitchState extends State<StoreSwitch> {
  late int currentIndex;

  @override
  void initState() {
    currentIndex = widget.currentIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.items.length,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return Column(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  currentIndex = index;
                });
                widget.onTap?.call(currentIndex);
              },
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                width: (MediaQuery.of(context).size.width / 2) - 5,
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: currentIndex == index
                      ? const Color(0xff146C94)
                      : const Color(0xffffffff),
                  border: currentIndex == index
                      ? Border.all(
                          color: Colors.black,
                          width: 2,
                        )
                      : Border.all(
                          color: Colors.black,
                          width: 0.5,
                        ),
                ),
                child: Center(
                  child: Text(
                    widget.items[index],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
