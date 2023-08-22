import 'package:flutter/material.dart';

class MyList extends StatefulWidget {
  const MyList({super.key});

  @override
  State<MyList> createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text("ListView and List Tile with images"),
            ),
            body: Container(
              child: ListView(
                children: const [
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Color(0xff764abc),
                      backgroundImage: AssetImage('assets/profile.png'),
                    ),
                    title: Text("Profile",
                        style: TextStyle(
                            color: Colors.indigoAccent,
                            fontWeight: FontWeight.bold)),
                    subtitle: Text("My Profile"),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Color(0xff764abc),
                      backgroundImage: AssetImage('assets/map.png'),
                    ),
                    title: Text("Map",
                        style: TextStyle(
                            color: Colors.indigoAccent,
                            fontWeight: FontWeight.bold)),
                    subtitle: Text("Map Details"),
                  ),

                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor:  Color(0xff764abc),
                      backgroundImage: AssetImage('assets/phone.jpg'),
                    ),
                    title: Text("Phone",
                    style: TextStyle(color: Colors.indigoAccent,fontWeight: FontWeight.bold)),
                    subtitle: Text("Contact Details"),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor:  Color(0xff764abc),
                      backgroundImage: AssetImage('assets/contact.png'),
                    ),
                    title: Text("Contact",
                    style: TextStyle(color: Colors.indigoAccent,fontWeight: FontWeight.bold)),
                    subtitle: Text("Conthttps://www.linkedin.com/in/saraswathi-prabha-7a0b8721a/act Us Details"),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor:  Color(0xff764abc),
                      backgroundImage: AssetImage('assets/setting.png'),
                    ),
                    title: Text("Setting",
                    style: TextStyle(color: Colors.indigoAccent,fontWeight: FontWeight.bold)),
                    subtitle: Text("Setting Details"),
                  )
                  
                   
                ],
              ),
            )));
  }
}
