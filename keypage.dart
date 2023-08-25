import 'package:flutter/material.dart';

class User {
  final String name;
  const User({
    required this.name,
  });
}

class AdvancedKeyPage extends StatefulWidget {
  @override
  _AdvancedKeyPageState createState() => _AdvancedKeyPageState();
}

class _AdvancedKeyPageState extends State<AdvancedKeyPage> {
  late List<User> users;

  @override
  void initState() {
    super.initState();

    users = [
      const User(name: 'Prabha'),
      const User(name: 'Saraswathi'),
      const User(name: 'Ratha'),
    ];
  }

  Widget buildUser(int index, User user) {
    String firstLetter = user.name.isNotEmpty ? user.name[0] : '?';
    return ListTile(
      key: ValueKey(user.name),
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      leading: CircleAvatar(
        backgroundColor: Colors.blue, // You can customize the background color
        radius: 30,
        child: Text(
          firstLetter.toUpperCase(),
          style: TextStyle(
            color: Colors.white, // You can customize the text color
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      title: Text(user.name),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('Value Keys'),
        centerTitle: true,
      ),
      body: ReorderableListView.builder(
        itemCount: users.length,
        onReorder: (oldIndex, newIndex) => setState(() {
          final index = newIndex > oldIndex ? newIndex - 1 : newIndex;

          final user = users.removeAt(oldIndex);
          users.insert(index, user);
        }),
        itemBuilder: (context, index) {
          final user = users[index];

          return buildUser(index, user);
        },
      ),
    ));
  }
}
