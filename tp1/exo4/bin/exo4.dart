import 'package:exo4/exo4.dart' as exo4;

void main(List<String> arguments) {
  print('1/');
  String sayHello(String param) {
    return 'Hello $param';
  }

  print('2/');
  double sum(double number1, double number2) {
    return number1 + number2;
  }

  print('3/');
  int sumMany(List<int> numbers) {
    return numbers.reduce((value, element) => value + element);
  }

  print('4/');
  void sumAndPrint(num param1, num param2, {bool shouldPrint = false}) {
    num result = param1 + param2;
    if (shouldPrint) {
      print('$param1 + $param2 = $result');
    }
  }

  print('5/');
  num sumAndFormat(num param1, num param2, {String? ft}) {
    num result = param1 + param2;

    if (ft != null) {
      if (ft == 'int') {
        return result.toInt();
      } else if (ft == 'double') {
        return result.toDouble();
      }
    }

    return result;
  }

  print('6/');
  strReverse(String input) => input.split('').reversed.join();
  String hello = "Hello";
  String reverse = strReverse(hello);
  print('$reverse');

  print('7/');
  void printFibonacci(int n) {
    int a = 0;
    int b = 1;

    for (int i = 0; i < n; i++) {
      print(a);
      int next = a + b;
      a = b;
      b = next;
    }
  }

  printFibonacci(17);
}
