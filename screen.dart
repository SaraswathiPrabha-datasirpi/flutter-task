import 'package:flutter/material.dart';
import 'package:my_app/second-screen.dart';
import 'package:my_app/settingscreen.dart';
import 'package:my_app/app_state.dart';
import 'package:provider/provider.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => SettingsScreenNotifier(),
        builder: (context, provider) {
          return Consumer<SettingsScreenNotifier>(
              builder: (context, notifier, child) {
            return MaterialApp(
                darkTheme: ThemeData.dark(),
                themeMode: notifier.isDarkModeEnabled ? ThemeMode.dark : ThemeMode.light,
                home: const NextPage());
          });
        }
        );
  }
}

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
    String value = "{itemList.length + 1}";
    setState(() {
      itemList.add(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("List details Page",
              style: TextStyle(color: Colors.amber, fontSize: 20)),
          actions: [
            IconButton(
              icon: const Icon(
                Icons.settings,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SettingsScreen()),
                );
              },
            )
          ],
        ),
        body: ListView.builder(
            itemCount: itemList.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(
                  "List values ${index + 1}",
                  style: const TextStyle(fontSize: 20),
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SecondScreen()));
                },
              );
            }),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {
                clickMe();
              },
              child: const Icon(Icons.add),
            ),
            const SizedBox(height: 10),
            FloatingActionButton(
              onPressed: () {},
              child: const Icon(Icons.delete),
            ),
          ],
        ),
      );
  }
}
