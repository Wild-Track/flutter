// ignore_for_file: file_names

import 'package:finder/classes/BachelorsProvider.dart';
import 'package:finder/classes/components/BachelorPreview.dart';
import 'package:finder/classes/DataBase.dart';
import 'package:finder/classes/models/Bachelor.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class BachelorMaster extends StatefulWidget {
  const BachelorMaster({Key? key}) : super(key: key);

  @override
  State<BachelorMaster> createState() => _BachelorMasterState();
}

class _BachelorMasterState extends State<BachelorMaster> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final bachelorsProvider =
        Provider.of<BachelorsProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Bachelor Dating App'),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: () {
              GoRouter.of(context).go('/favorites');
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: bachelorsProvider.bachelors.length,
        itemBuilder: (context, index) {
          final bachelor = bachelorsProvider.bachelors[index];
          return BachelorPreview(bachelor: bachelor);
        },
      ),
    );
  }
}
