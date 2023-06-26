
void main(List<String> arguments) {
  print('1/');
  int price1 = 1;
  double price2 = 1.1;
  print('int: $price1');
  print('double: $price2');

  print('2/');
  double sum = price1 + price2;
  print('Somme: $sum');

  print('3/');
  print('Le type de sum est: ${sum.runtimeType}');

  print('4/');
  print(sum.toInt());

  print('5/');
  String strSeven = "7";
  int numSeven = int.parse(strSeven);
  print(numSeven);
}
