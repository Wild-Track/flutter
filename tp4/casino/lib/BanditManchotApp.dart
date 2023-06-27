// ignore_for_file: file_names
import 'package:casino/Game.dart';
import 'package:flutter/material.dart';

class BanditManchotApp extends StatelessWidget {
  const BanditManchotApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bandit Manchot',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Game(),
    );
  }
}