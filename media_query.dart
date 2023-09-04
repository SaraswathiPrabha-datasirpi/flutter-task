import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Project(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Project extends StatefulWidget {
  const Project({Key? key});

  @override
  State<Project> createState() => _ProjectState();
}

class _ProjectState extends State<Project> {
  int selectIndex = 0;

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
    // Get the device screen size
    final screenSize = MediaQuery.of(context).size;
    final isLandscape = screenSize.width > screenSize.height;

    return Scaffold(
      appBar: AppBar(
        title: Text("ListView in Flutter"),
        titleTextStyle: TextStyle(fontSize: 19),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              MyInheritedWidget.of(context).showAlertDialog(context);
            },
            icon: Icon(Icons.more_vert),
          )
        ],
      ),
      drawer: NavigateDrawer(),
      body: isLandscape ? buildDesktopLayout() : buildMobileLayout(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: "Scroll to Bottom",
        child: Icon(Icons.arrow_downward),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: "Message",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_photo_alternate_rounded),
            label: "Images",
          ),
        ],
        currentIndex: selectIndex,
        onTap: onItemTap,
        iconSize: 40,
      ),
    );
  }

  Widget buildDesktopLayout() {
    return ListView.builder(
      itemCount: 50,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Text("List ${index + 1}", style: TextStyle(fontSize: 20)),
            subtitle: Text("List ${index + 1} Subtitle ",
                style: TextStyle(
                    color: Colors.indigo,
                    fontWeight: FontWeight.bold,
                    fontSize: 20)),
            leading: Icon(Icons.rounded_corner),
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
              icon: Icon(Icons.arrow_forward),
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
            subtitle: Text("List ${index + 1} Subtitle ",
                style: TextStyle(color: Colors.indigo, fontWeight: FontWeight.bold)),
            leading: Icon(Icons.rounded_corner),
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
              icon: Icon(Icons.arrow_forward),
            ),
          ),
        );
      },
    );
  }
}

class PhotoPage extends StatefulWidget {
  const PhotoPage({Key? key});

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
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation and Grid View"),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 5,
        ),
        itemCount: imageList.length,
        itemBuilder: (context, index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: Image.network(imageList[index], fit: BoxFit.cover),
              ),
              SizedBox(height: 5, width: 5),
              Text(
                imageName[index],
                style: TextStyle(color: Colors.black87),
                textAlign: TextAlign.center,
              ),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          MyInheritedWidget.of(context).showAlertDialog(context);
        },
        child: Icon(Icons.more_horiz),
      ),
    );
  }
}
