// ignore_for_file: file_names

import 'package:finder/classes/BachelorPreview.dart';
import 'package:finder/classes/DataBase.dart';
import 'package:finder/classes/models/Bachelor.dart';
import 'package:flutter/material.dart';

class BachelorMaster extends StatefulWidget {
  const BachelorMaster({Key? key}) : super(key: key);

  @override
  State<BachelorMaster> createState() => _BachelorMasterState();
}

class _BachelorMasterState extends State<BachelorMaster> {
  List<Bachelor> bachelors = [];

  List<Bachelor> likedBachelors = [];

  void toggleLike(Bachelor bachelor) {
    setState(() {
      if (likedBachelors.contains(bachelor)) {
        likedBachelors.remove(bachelor);
      } else {
        likedBachelors.add(bachelor);
      }
    });
  }

  @override
  void initState() {
    super.initState();
    bachelors = Database.getFakeBachelors();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bachelor Dating App'),
      ),
      body: ListView.builder(
        itemCount: bachelors.length,
        itemBuilder: (context, index) {
          final bachelor = bachelors[index];
          final isLiked = likedBachelors.contains(bachelor);
          return BachelorPreview(bachelor: bachelor, isLiked: isLiked, onLikeChanged: toggleLike);
        },
      ),
    );
  }
}
