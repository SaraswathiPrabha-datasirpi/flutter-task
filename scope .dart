//Global scope
int length = 5;
int breadth = 5;

void printArea() {
  print('Length:$length');
  print('Breadth: $breadth');
}

void main() {
  int area = length * breadth;

  printArea();
  print('Area: $area');
}

//Lexical scope---> type -1
void main() {
  var name = 'Saraswathi Prabha';

  void printName() {
    name = 'Prabha';
    print("\n**Lexical Scope type-1 output**");
    print('My name is: ${name}');
  }

  print(name);

  printName();
}

// //Lexical scope----> type-2
void main() {
  String my_name = "Saraswathi Prabha";

  void outerFunction() {
    String department = 'CSE';
    int reg_no = 14;
    void innerFunction() {
      String department = 'ECE';
      int age = 22;
      print('\n**Lexical scope type-2 output**');
      print('Department: $department');
      print('RegNo: $reg_no');
      print('Name: $my_name');
      print('My age is: $age');
    }

    innerFunction();

    print('Department: $department');
    print('RegNo: $reg_no');
  }

  outerFunction();
}
