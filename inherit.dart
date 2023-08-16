import 'package:flutter/material.dart';

class MyInheritedWidget extends InheritedWidget {
 

  MyInheritedWidget({
   
    required Widget child,
  }) : super(child: child);

  static MyInheritedWidget of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<MyInheritedWidget>()!;
  }

  void showAlertDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Welcome'),
          content: const Text('AlertBox Message!!!.'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: const Text('Close'),
            ),
          ],
        );
      },
    );
  }

  @override
  bool updateShouldNotify(MyInheritedWidget oldWidget) {
    return false;
  }
}
