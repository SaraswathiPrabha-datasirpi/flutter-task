import 'package:flutter/material.dart';
import 'package:my_app/new.dart';

void main() {
  runApp(const Demo());
}

class Demo extends StatelessWidget {
  const Demo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
          title: const Text("ListView in Flutter"),
          backgroundColor: Colors.deepPurple,
          centerTitle: true,
          leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu))),
      body: ListView.builder(
        itemCount: 50,
        itemBuilder: (context, index) {
          return Card(
              child: ListTile(
            title: Text("List ${index + 1}"),
            subtitle: Text("List ${index + 1} Subtile ",
                style: const TextStyle(
                    color: Colors.indigo, fontWeight: FontWeight.bold)),
            leading: const Icon(Icons.rounded_corner),
            onTap: () {
              print("Prabha");
            },
            trailing: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NextPage()),
                  );
                },
                icon: const Icon(Icons.arrow_forward)),
          ));
        },
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.arrow_downward)),
    ));
  }
}
