// ignore_for_file: file_names

import 'package:finder/classes/BachelorApp.dart';
import 'package:finder/classes/BachelorsProvider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:finder/classes/BachelorsFavoritesProvider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<BachelorsProvider>(
          create: (context) => BachelorsProvider(),
        ),
        ChangeNotifierProvider(
            create: (context) => BachelorsFavoritesProvider()),
      ],
      child: const App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bachelor app',
      home: BachelorApp(),
    );
  }
}
