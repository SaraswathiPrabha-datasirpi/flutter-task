import 'package:flutter/material.dart';

class NextPage extends StatefulWidget {
  const NextPage({super.key});

  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  List<String> itemList = [
    "Item 1",
    "Item 2",
    "Item 3",
    "Item 4",
    "Item 5",
    "Item 6",
    "Item 7",
    "Item 8",
    "Item 9",
    "Item 10",
    "Item 11",
    "Item 12",
    "Item 13",
    "Item 14",
    "Item 15",

  ];
  void clickMe() {
    String value = "New items {itemList.length + 1}";
    setState(() {
      itemList.add(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("List details Page",
              style: TextStyle(color: Colors.amber)),
        ),
        body: ListView.builder(
          itemCount: itemList.length,
            itemBuilder: (context, index) {
              return ListTile(title: Text("List ${index + 1}"));
            }),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          //crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: clickMe,
              child: const Icon(Icons.add),
            ),
            const SizedBox(height: 10),
            FloatingActionButton(
              onPressed: () {
                print('Prabha');
              },
              child: const Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}
