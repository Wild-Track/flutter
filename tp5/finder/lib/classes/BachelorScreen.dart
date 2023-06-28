// ignore_for_file: file_names

import 'package:finder/classes/DataBase.dart';
import 'package:flutter/material.dart';

class BachelorScreen extends StatelessWidget {
  const BachelorScreen({Key? key}) : super(key: key);

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
          return ListTile(
            leading: Image.asset(bachelor.avatar),
            title: Text('${bachelor.firstname} ${bachelor.lastname}'),
            subtitle: Text(bachelor.job ?? 'No job specified'),
            trailing: Text(bachelor.gender.toString()),
          );
        },
      ),
    );
  }
}
