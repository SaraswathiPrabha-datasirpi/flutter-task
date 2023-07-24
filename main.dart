class Employee {
  int empId = 1;
  String empName = "Prabha";

  void display() {
    print("Employee name  is: $empName");
  }

//Default Constructor
  Employee() {
    print("Default Constructor");
  }
}

void main() {
  Employee emp = new Employee();
  emp.empId = 3;
  print("Employee id is: ${emp.empId}");
  emp.display();

  print("\n");

  Employee emp1 = new Employee();
  emp1.empId = 5;
  emp1.empName = 'Sabana';
  print("Employee id is: ${emp1.empId}");
  emp1.display();
}


















// import 'dart:io';

// void main() {
//   var name;
//   print("Enter your name");
//   name = stdin.readLineSync();
//   print(name);
// }
