import 'dart:async';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyStreamBuilderExample(),
    );
  }
}

class MyStreamBuilderExample extends StatefulWidget {
  @override
  _MyStreamBuilderExampleState createState() => _MyStreamBuilderExampleState();
}

class _MyStreamBuilderExampleState extends State<MyStreamBuilderExample> {
  // Define a stream controller and a stream
  final StreamController<int> _streamController = StreamController<int>();
  Stream<int> get _stream => _streamController.stream;

  int _counter = 0;

  @override
  void dispose() {
    _streamController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StreamBuilder Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Display the data from the stream using StreamBuilder
            StreamBuilder<int>(
              stream: _stream,
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                }
                if (!snapshot.hasData) {
                  return CircularProgressIndicator();
                }
                // Display the data from the stream
                return Text('Counter: ${snapshot.data}');
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Increment the counter and add it to the stream
                _counter++;
                _streamController.sink.add(_counter);
              },
              child: Text('Increment Counter'),
            ),
          ],
        ),
      ),
    );
  }
}
