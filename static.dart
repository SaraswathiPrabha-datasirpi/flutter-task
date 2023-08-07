import 'package:flutter/material.dart';
import 'package:my_app/new.dart';

void main() {
  runApp(const Demo());
}

class Demo extends StatelessWidget {
  static int myStaticVariable = 22;

  static void myStaticMethod() {
    print("This is a static method.");
  }

  const Demo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("ListView in Flutter"),
          titleTextStyle: const TextStyle(fontSize: 32),
          backgroundColor: Colors.deepPurple,
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              myStaticMethod();

              print("Static variable value: ${Demo.myStaticVariable}");
            },
            icon: const Icon(Icons.menu),
          ),
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {

            if (constraints.maxWidth > 600) {

              return buildDesktopLayout();
            } else {

              return buildMobileLayout();
            }
          },
        ),
      ),
    );
  }

  Widget buildDesktopLayout() {

    return ListView.builder(
      itemCount: 50,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title:
                Text("List ${index + 1}", style: const TextStyle(fontSize: 22)),
            subtitle: Text("List ${index + 1} Subtile ",
                style: const TextStyle(
                    color: Colors.indigo,
                    fontWeight: FontWeight.bold,
                    fontSize: 22)),
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
              icon: const Icon(Icons.arrow_forward),
            ),
          ),
        );
      },
    );
  }

  Widget buildMobileLayout() {

    return ListView.builder(
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
              icon: const Icon(Icons.arrow_forward),
            ),
          ),
        );
      },
    );
  }
}
