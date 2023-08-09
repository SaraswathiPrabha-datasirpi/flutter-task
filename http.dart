import 'package:flutter/material.dart';
// Get and Post datas from direct url
import 'package:http/http.dart' as http;
import 'dart:convert';

class PhotoPage extends StatefulWidget {
  const PhotoPage({super.key});

  @override
  State<PhotoPage> createState() => _PhotoPageState();
}

class _PhotoPageState extends State<PhotoPage> {

  //GET Request
  Future<void> fetchPosts() async {
    var url = Uri.parse('http://localhost:5000/books');
    var response = await http.get(url);

    if (response.statusCode == 200) {
      print('***GET request successful***');
      print('Response data get:');
      final jsonData = json.decode(response.body);
      print(json.encode(jsonData));

    } else {
      print('***GET request failed***');
      print('Response status code: ${response.statusCode}');
      print('Response body: ${response.body}');
    }
  }

//POST request
  Future<void> createPost() async {
    final url = Uri.parse('http://localhost:5000/books');
    final headers = {'Content-Type': 'application/json'};
    final body =
        '{"id": 4, "name": "New book", "description": "Desc of the book", "year_of_publication" : 2001}';

    final response = await http.post(
      url,
      headers: headers,
      body: body,
    );

    if (response.statusCode == 200) {

      print('***POST request successful***');
      print('Response data post: ');
      final jsonData = json.decode(response.body);
      print(json.encode(jsonData));
    } else {
      print('***POST request failed***');
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
            child: ElevatedButton(
                onPressed: () {
                  fetchPosts();
                  createPost();
                },
                child: const Text("Photo Page"))),
      ),
    );
  }
}
