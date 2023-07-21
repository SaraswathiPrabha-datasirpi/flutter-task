//Passing parameters (Required)
int add(int num1, int num2) {
  return num1 + num2;
}

void main() {
  int num1 = 10, num2 = 20, result;
  result = add(num1, num2);
  print(result);
}

//Optional Positional parameters (Optional)
void main() {
  printName('Prabha', 'Saraswathi');
  printName('Sarmatha');
}

printName(String name1, [name2]) {
  print("Hello $name1 and Hii $name2");
}

//Optional named Parameter
void main() {
  printName('Prabha');
}

printName(String name1, {name2 = 'Selvi'}) {
  print("Hello $name1 and $name2");
}

// Optional Default Parameter
void main() {
  var thing = printName('Prabha', name2: 'Sabana');
  print(thing);
}

printName(String name1, {name2 = "Thiru"}) {
  return "Hello $name1 and $name2";
}
