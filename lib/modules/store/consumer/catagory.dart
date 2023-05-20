import 'package:flutter/material.dart';

class Catagory extends StatefulWidget {
  const Catagory({super.key});

  @override
  State<Catagory> createState() => _CatagoryState();
}

class _CatagoryState extends State<Catagory> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 10,
      child: Scaffold(
          body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: TabBar(
                isScrollable: true,
                indicator: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(color: Colors.purple),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                labelColor: Colors.purple,
                unselectedLabelColor: Colors.black,
                tabs: const [
                  Tab(text: 'Abcdefghi'),
                  Tab(text: 'BAbcdefghi'),
                  Tab(text: 'CAbcdefghi'),
                  Tab(text: 'DAbcdefghi'),
                  Tab(text: 'EAbcdefghi'),
                  Tab(text: 'FAbcdefghi'),
                  Tab(text: 'GAbcdefghi'),
                  Tab(text: 'HAbcdefghi'),
                  Tab(text: 'IAbcdefghi'),
                  Tab(text: 'JAbcdefghi')
                ],
              ),
            ),
            const Expanded(
                child: TabBarView(
              children: [
                Center(child: Text("A Pages")),
                Center(child: Text("B Pages")),
                Center(child: Text("C Pages")),
                Center(child: Text("D Pages")),
                Center(child: Text("E Pages")),
                Center(child: Text("F Pages")),
                Center(child: Text("G Pages")),
                Center(child: Text("H Pages")),
                Center(child: Text("I Pages")),
                Center(child: Text("J Pages"))
              ],
            ))
          ],
        ),
      )),
    );
  }
}
