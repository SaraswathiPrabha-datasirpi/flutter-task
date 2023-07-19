void main() {
  //Integer
  int a = 10;
  int b = 5;
  int c = a + b;
  print('Result: $c');

//String
  String name1 = 'Prabha';
  String name2 = 'Saraswathi';
  print('My name is: ${name1} ${name2}');

//Double
  double v = 25.5 * 5;
  print('Ans is : $v');

//Boolean
  String str1 = 'ABC';
  String str2 = 'Abc';
  bool value = (str1 == str2);
  print(value);

//List using integer
  List values = new List<int>.filled(5, 1, growable: false);
  values[0] = 1;
  values[1] = 5;
  values[2] = 8;
  values[3] = 7;
  print('Elements in the numeric list are:$values');

//List using String
  List names = new List<String>.filled(5, 'Prabha ', growable: true);
  names[0] = 'Prabha';
  names[1] = 'Selvi';
  names[2] = 'Saraswathi';
  names.add('Sabana');
  print('Elements in the list are: $names');

//Map
  var datas = new Map();
  {
    datas['Mob_Name'] = 'Samsung';
    datas['Model'] = 'M11';
    datas['Processor'] = 'Snapdragon';
    print(datas);
  }

//Runes
  var spade = '\u2660';
  print(spade);
  var club = '\u2663';
  print(club);
}
