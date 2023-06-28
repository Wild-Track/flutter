// ignore_for_file: file_names

import 'package:finder/classes/BachelorMaster.dart';
import 'package:flutter/material.dart';

class BachelorApp extends StatelessWidget {
  const BachelorApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bachelor Dating App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const BachelorMaster(),
    );
  }
}
