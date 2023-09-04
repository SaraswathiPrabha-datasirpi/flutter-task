import 'package:flutter/material.dart';

class NavigateDrawer extends StatelessWidget {
  const NavigateDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: SingleChildScrollView(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
            buildHeader(context),
            buildItems(context)
           
          ])),
    );
  }

  buildHeader(BuildContext context) {
    return const DrawerHeader(
        decoration: BoxDecoration(color: Colors.deepPurpleAccent),
        child: UserAccountsDrawerHeader(
          decoration: BoxDecoration(color: Colors.deepPurpleAccent),
          
          currentAccountPictureSize: Size.square(50),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/profile.png'),
            ) ,

            accountName: Text('Prabha',style: TextStyle(fontSize: 18),),
            accountEmail: Text('prabha@gmail.com'),
            ),
            
            );
   
  }

  buildItems(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text(' My Profile '),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.book),
            title: const Text(' My Course '),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.workspace_premium),
            title: const Text(' Go Premium '),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.edit),
            title: const Text(' Edit Profile '),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('LogOut'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
