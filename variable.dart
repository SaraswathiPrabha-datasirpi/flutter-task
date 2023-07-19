void main() {
  //var
  var a = 10;
  print('Value of a is: $a');

  //String
  String name = 'Prabha';
  print(name);

  //dynamic
  dynamic z = 5;
  print('Value of z is: $z');
  print('Datatype of variable $z is :${z.runtimeType}');
  z = 'Hello';
  print('Value of z is: $z');
  print('Datatype of variable $z is :${z.runtimeType}');

//final
  final num1 = 100;
  print(num1);

//const
  const pi = 3.14;
  const area = pi * 5;
  print("The output is ${area}");
}
