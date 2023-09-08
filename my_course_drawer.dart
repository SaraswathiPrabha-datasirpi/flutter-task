import 'package:flutter/material.dart';

class CoursePage extends StatefulWidget {
  const CoursePage({Key? key}) : super(key: key);

  @override
  State<CoursePage> createState() => _CoursePageState();
}

class _CoursePageState extends State<CoursePage> {
  String selectedValue = 'Java'; // Default selected value

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My Course Page"),
          centerTitle: true,
        ),
        body: Center(
          child: DropdownButton<String>(
            // decoration: InputDecoration(
            //   enabledBorder: OutlineInputBorder(
            //     borderRadius: BorderRadius.circular(10),
            //     borderSide: const BorderSide(width: 2,color: Colors.lightBlue),
            //   )
            // ),
            hint: const Text("Select Course items"),
            icon: const Icon(Icons.arrow_drop_down),
            dropdownColor: Colors.cyan,
            value: selectedValue,
            onChanged: (newValue) {
              setState(() {
                selectedValue = newValue!;
              });
            },
            style: TextStyle(fontSize: 20),
            items: <String>[
              'Java',
              'Flutter',
              'Python',
              'Advanced Java',
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
