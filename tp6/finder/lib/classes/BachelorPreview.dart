// ignore_for_file: file_names

import 'package:finder/classes/BachelorDetails.dart';
import 'package:finder/classes/models/Bachelor.dart';
import 'package:flutter/material.dart';

class BachelorPreview extends StatelessWidget {
  final Bachelor bachelor;

  const BachelorPreview({Key? key, required this.bachelor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => BachelorDetails(bachelor: bachelor),
          ),
        );
      },
      leading: Image.asset(bachelor.avatar),
      title: Text('${bachelor.firstname} ${bachelor.lastname}'),
      subtitle: Text(bachelor.job ?? 'No job specified'),
      trailing: Text(bachelor.gender.toString()),
    );
  }
}
