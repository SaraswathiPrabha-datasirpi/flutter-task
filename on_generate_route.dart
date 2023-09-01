import 'package:flutter/material.dart';
import 'package:my_app/new.dart';
import 'package:my_app/message.dart';
import 'package:my_app/inherit.dart';

void main() {
  runApp(
    MyInheritedWidget(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
  

        home: const Project(),

        onGenerateRoute: (settings) {
          switch (settings.name) {
            case '/':
              return MaterialPageRoute(builder: (context) => Project());

            case '/image':
              return MaterialPageRoute(builder: (context) => PhotoPage());

            default:
              return null;
          }
        }

       
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
        ],
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
            icon: Icon(Icons.message),
            label: "Message",
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.add_photo_alternate_rounded), label: "Images"),
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
                  MaterialPageRoute(builder: (context) => const MyWidget()),
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
                  MaterialPageRoute(builder: (context) => const MyWidget()),
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

//Another class PhotoPage
class PhotoPage extends StatefulWidget {
  const PhotoPage({super.key});

  @override
  State<PhotoPage> createState() => _PhotoPageState();
}

class _PhotoPageState extends State<PhotoPage> {
  List<String> imageList = [
    'https://img.freepik.com/premium-photo/beautiful-landscape-based-3d-rendering-illustration_771975-25.jpg',
    'https://contentgrid.homedepot-static.com/hdus/en_US/DTCCOMNEW/Articles/discover-the-secret-language-of-flowers-2022-hero.jpeg',
    'https://images.pexels.com/photos/1032650/pexels-photo-1032650.jpeg?cs=srgb&dl=pexels-travis-rupert-1032650.jpg&fm=jpg',
    'https://t3.ftcdn.net/jpg/00/01/67/22/360_F_1672292_MKhwogQwoY49XYQwJwLIoC4ngPIoBY.jpg',
    'https://hips.hearstapps.com/hmg-prod/images/close-up-of-tulips-blooming-in-field-royalty-free-image-1584131603.jpg',
    'https://www.pixelstalk.net/wp-content/uploads/images6/Nature-HD-Wallpaper-Free-download.jpg',
    'https://t4.ftcdn.net/jpg/01/77/47/67/360_F_177476718_VWfYMWCzK32bfPI308wZljGHvAUYSJcn.jpg',
    'https://t4.ftcdn.net/jpg/00/43/90/37/360_F_43903732_X1Z2gzy497aisgME62crmU00Sf8smP59.jpg',
    'https://wallpaperaccess.com/full/1349252.jpg',
    'https://img.freepik.com/premium-photo/beautiful-landscape-based-3d-rendering-illustration_771975-25.jpg',
  ];

  List<String> imageName = [
    "Nature",
    "Flower",
    "Beach",
    "Bird",
    "Flower",
    "Nature",
    "Bird",
    "Beach",
    "Tree",
    "Nature"
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text("Bottom Navigation and Grid View"),
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 5),
          itemCount: imageList.length,
          itemBuilder: (context, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Image.network(imageList[index], fit: BoxFit.cover),
                ),
                const SizedBox(height: 5, width: 5),

                Text(
                  imageName[index],
                  style: const TextStyle(color: Colors.black87),
                  textAlign: TextAlign.center,
                ),

              ],
            );
          }),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            MyInheritedWidget.of(context).showAlertDialog(context);
          },
          child: const Icon(Icons.more_horiz)),
    ));
  }
}
