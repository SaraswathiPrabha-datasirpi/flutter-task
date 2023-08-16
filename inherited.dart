import 'package:flutter/material.dart';
import 'package:my_app/new.dart';
import 'package:my_app/message.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:my_app/inherit.dart';

Future<void> main() async {
  await dotenv.load();
  runApp(
    MyInheritedWidget(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const Project(),
        routes: {
          '/image': (context) => const PhotoPage(),
        },
      ),
    ),
  );
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
    const Text('Message'),
    const Text('Photo'),
  ];

  void onItemTap(int index) {
    setState(() {
      if (index == 1) {
// Check if the tapped item is "Message" (index 1)
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => MessagePage(),
          ),
        );
      } else if (index == 2) {
// Check if the tapped item is "Photo" (index 2)
        Navigator.pushNamed(context, '/image');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    //final sharedData = MyInheritedWidget.of(context);

    return Scaffold(
        appBar: AppBar(
            title: const Text("ListView in Flutter"),
            titleTextStyle: const TextStyle(fontSize: 19),
            backgroundColor: Colors.deepPurple,
            centerTitle: true,
            actions: [
          IconButton(
              onPressed: () {
                MyInheritedWidget.of(context).showAlertDialog(context);
              },
              icon: const Icon(Icons.more_vert))
        ]));
  }
}
