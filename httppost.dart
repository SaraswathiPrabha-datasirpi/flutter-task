import 'dart:html';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class PhotoPage extends StatefulWidget {
const PhotoPage({super.key});

@override
State<PhotoPage> createState() => _PhotoPageState();
}

class _PhotoPageState extends State<PhotoPage> {

TextEditingController nameController = TextEditingController();
TextEditingController descriptionController = TextEditingController();
TextEditingController year_of_publicationController = TextEditingController();

//GET Request
Future<void> fetchPosts() async {
final url = Uri.parse('http://localhost:5000/books');

var response = await http.get(url);

if (response.statusCode == 200) {
print('GET request successful');
print('Response data get:');
final jsonData = json.decode(response.body);
print(json.encode(jsonData));

} else {
print('GET request failed');
print('Response status code: ${response.statusCode}');
print('Response body: ${response.body}');
}
}

//POST request
Future<void> createPost(String name, String description, String year_of_publication) async {
var url = Uri.parse('http://localhost:5000/books');
final headers = {'Content-Type': 'application/json'};

final bodyData = {
'id':4,
'name': name,
'description': description,
'year_of_publication': year_of_publication,
};

final response = await http.post(
url,
headers: headers,
body: json.encode(bodyData),
);

if (response.statusCode == 200) {
// print("test");

print('POST request successful');
print('Response data: ');
final jsonData = json.decode(response.body);
print(json.encode(jsonData));
} else {
print('POST request failed');
print('Response status code: ${response.statusCode}');
print('Response body: ${response.body}');
}
}

@override
Widget build(BuildContext context) {
return MaterialApp(
home: Scaffold(
appBar: AppBar(
title: const Text("Bottom Navigation"),
),
body: Center(
child: Column(
mainAxisAlignment: MainAxisAlignment.center,
children: [
Padding(
padding: EdgeInsets.all(16.0),
child: TextField(
controller: nameController,
decoration: InputDecoration(labelText: 'Name'),
),
),
Padding(
padding: EdgeInsets.all(16.0),
child: TextField(
controller: descriptionController,
decoration: InputDecoration(labelText: 'Description'),
),
),
Padding(
padding: EdgeInsets.all(16.0),
child: TextField(
controller: year_of_publicationController,
decoration: InputDecoration(labelText: 'Year-of-publication'),
),
),
ElevatedButton(
onPressed: () {
String name = nameController.text;
String description = descriptionController.text;
String year_of_publication =
year_of_publicationController.text;
fetchPosts();
createPost(name, description, year_of_publication);
},
child: Text('Click'),
),
],
),
),
),
);
}
}

