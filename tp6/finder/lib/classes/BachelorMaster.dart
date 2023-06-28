// ignore_for_file: file_names

import 'package:finder/classes/BachelorPreview.dart';
import 'package:finder/classes/DataBase.dart';
import 'package:flutter/material.dart';

class BachelorMaster extends StatelessWidget {
  const BachelorMaster({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bachelors = Database.getFakeBachelors();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Bachelor Dating App'),
      ),
      body: ListView.builder(
        itemCount: bachelors.length,
        itemBuilder: (context, index) {
          final bachelor = bachelors[index];
          return BachelorPreview(bachelor: bachelor);
        },
      ),
    );
  }
}
