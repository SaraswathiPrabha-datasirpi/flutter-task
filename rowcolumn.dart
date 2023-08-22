import 'package:flutter/material.dart';

void main() {
runApp(MyApp());
}

class MyApp extends StatelessWidget {
@override
Widget build(BuildContext context) {
return MaterialApp(
home: Scaffold(
appBar: AppBar(
title: const Text('Responsive and Adaptive Layout'),
),
body: LayoutBuilder(builder: (context, constraints) {
if(constraints.maxWidth<768){

return Column(
children: [
Container(
width: 350,
height: 200,
decoration: BoxDecoration(
gradient: const LinearGradient(
colors: [Colors.pinkAccent, Colors.purpleAccent]),
borderRadius: BorderRadius.circular(12),
),
child: const Center(
child: Text("Container Text"),
),
),
const Text(
"This practice lesson consists of short paragraphs about interesting subjects.great typing practice for writing essays, reports, emails, and more for school and work.",
style: TextStyle(fontSize: 22),
)
],
); 
}

else{
return Row(
children: [
Container(
width: 350,
height: 200,
decoration: BoxDecoration(
gradient: const LinearGradient(
colors: [Colors.pinkAccent, Colors.purpleAccent]),
borderRadius: BorderRadius.circular(12),
),
child: const Center(
child: Text("Container Text"),
),
),
const SizedBox(width: 15),

const Expanded(child: 
Text(
"This practice lesson consists of short paragraphs about interesting subjects.great typing practice for writing essays,reports, emails, and more for school and work.",
style: TextStyle(fontSize: 22),
))
],
);
}

}
)
)
);
}
}

