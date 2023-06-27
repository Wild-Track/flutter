import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;
  final List<int> _itemList = [];

  bool _isPrime(int number) {
    if (number < 2) return false;
    for (int i = 2; i <= number / 2; i++) {
      if (number % i == 0) return false;
    }
    return true;
  }

  Color _getBackgroundColor(int number) {
    return number.isEven ? Colors.cyan : Colors.indigo;
  }

  String _getNumberType(int number) {
    if (_isPrime(number)) {
      return 'nombre premier';
    } else if (number.isEven) {
      return 'pair';
    } else {
      return 'impair';
    }
  }

  Image _getImage(int number) {
    if (_isPrime(number)) {
      return Image.asset('images/ananas.png');
    } else if (number.isEven) {
      return Image.asset('images/poire.png');
    } else {
      return Image.asset('images/pomme.png');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('$_counter (${_getNumberType(_counter)})'),
      ),
      body: ListView.builder(
        itemCount: _itemList.length,
        itemBuilder: (context, index) {
          final item = _itemList[index];
          return ListTile(
            tileColor: _getBackgroundColor(item),
            leading: SizedBox(
              width: 50,
              height: 50,
              child: _getImage(item),
            ),
            title: Text(
              'Item $item',
              style: const TextStyle(color: Colors.white),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _counter++;
            _itemList.add(_counter);
          });
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
