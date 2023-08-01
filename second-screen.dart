import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  List<String> products = [
    "Fruits",
    "Vegetables",
    "Books",
    "Groceries",
    "Home Appliances",
    "Cosmetics",
    "Clothing",
    "Electronics",
    "Tools",
    "Vehicles",
    "Toys",
    "Footwear",
    "Mobile Phone",
    "TV",
    "Automobile",
    "Internet Connectivity"
  ];
  Future<List<String>> fetchData() async {
    await Future.delayed(Duration(seconds: 2));
    return products;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text("Product details"),
            ),
            body: FutureBuilder<List<String>>(
                future: fetchData(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const Center(child: CircularProgressIndicator());
                  }
                   else {
                    return ListView.builder(
                        itemCount: products.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text(products[index]),
                          );
                        });
                  }
                }
                ),
                ),
                );
  }
}
