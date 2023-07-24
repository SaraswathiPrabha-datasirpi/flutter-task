class Employee {
  int empId = 1;
  String empName = "Saraswathi";

//Parametrized constructor
  Employee(int empId, String empName) {
    print("Parameterized Constructor");
    this.empId = empId;
    this.empName = empName;
  }

  //Named Constructor
  Employee.myOwnCustomConstructor() {
    print("Named Constructor");
    this.empId = empId;
    this.empName = empName;
  }

  Employee.namedConstructor(this.empId, this.empName) {
    print("Another Named Constructor");
  }

  
  void display() {
    print("Employee id is: $empId");
    print("Employee name  is: $empName");
  }
}

void main() {
  Employee emp = new Employee(7, 'Prabha');
  emp.display();
  print("\n");
  Employee emp1 = Employee.myOwnCustomConstructor();
  emp1.empId = 12;
  emp1.empName = 'Sabana';
  emp1.display();
  print("\n");
  Employee emp2 = Employee.namedConstructor(29, 'Thiru');
  emp2.display();
}

//Const Constructor
class Student {
  final String name;
  final int age;

  const Student(this.name, this.age);
}

void main() {
  Student s = const Student('Prabha', 22);
  print("Employee name  is: ${s.name}");
  print("Employee name  is: ${s.age}");
}
