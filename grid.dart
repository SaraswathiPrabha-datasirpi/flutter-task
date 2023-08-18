import 'package:flutter/material.dart';
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
