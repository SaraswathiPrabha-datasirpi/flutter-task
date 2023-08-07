import 'package:flutter/material.dart';
import 'package:my_app/new.dart';
import 'package:my_app/image.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

Future<void> main() async {
  await dotenv.load();
  runApp(MaterialApp(
    home: const Project(),
    routes: {
      '/message': (context) => const MessagePage(),
    },
  ));
}

class Project extends StatefulWidget {
  const Project({super.key});

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  int selectIndex = 0;
  List<Widget> w = <Widget>[
    const Text('Home'),
    const Text('Photo'),
    const Text('Message'),
  ];

  void onItemTap(int index) {
    setState(() {
      if (index == 1) {
// Check if the tapped item is "Photo" (index 1)
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const PhotoPage(),
          ),
        );
      } else if (index == 2) {
// Check if the tapped item is "Message" (index 2)
        Navigator.pushNamed(context, '/message');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView in Flutter"),
        titleTextStyle: const TextStyle(fontSize: 19),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.menu),
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
// Check the screen width and adjust the layout accordingly
          if (constraints.maxWidth > 600) {
// If the screen width is greater than 600 pixels, show a two-column layout
            return buildDesktopLayout();
          } else {
// Use a mobile layout for smaller screens (including mobile)

            return buildMobileLayout();
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: "Scroll to Bottom",
        child: const Icon(Icons.arrow_downward),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_photo_alternate_rounded),
            label: "Photo",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Message"),
        ],
        currentIndex: selectIndex,
        onTap: onItemTap,
        iconSize: 40,
      ),
    );
  }

  Widget buildDesktopLayout() {
// Customize your desktop or tablet layout here

    return ListView.builder(
      itemCount: 50,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title:
                Text("List ${index + 1}", style: const TextStyle(fontSize: 20)),
            subtitle: Text("List ${index + 1} Subtile ",
                style: const TextStyle(
                    color: Colors.indigo,
                    fontWeight: FontWeight.bold,
                    fontSize: 20)),
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
// Customize your mobile layout here

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

//Another class MessagePage
class MessagePage extends StatefulWidget {
  const MessagePage({super.key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Bottom Navigation"),
        ),
        body: const Center(
          child: Text("Message Page"),
        ),
      ),
    );
  }
}
