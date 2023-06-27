// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:monalisa/classes/Artwork.dart';

class MuseumApp extends StatelessWidget {
  const MuseumApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Museum',
      theme: ThemeData(
        primaryColor: Colors.brown,
      ),
      home: const Artwork(),
    );
  }
}