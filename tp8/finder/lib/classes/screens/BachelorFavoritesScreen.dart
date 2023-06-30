// ignore_for_file: file_names

import 'package:finder/classes/BachelorsFavoritesProvider.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

class BachelorsFavoritesScreen extends StatelessWidget {
  const BachelorsFavoritesScreen({super.key});

@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorites'),
        actions: [
          IconButton(
            padding: const EdgeInsets.fromLTRB(0, 0, 80, 0),
            icon: const Icon(
              Icons.arrow_back_sharp,
            ),
            onPressed: () {
              GoRouter.of(context).go('/');
            },
          )
        ],
      ),
      body: Consumer<BachelorsFavoritesProvider>(
        builder: (context, favoritesProvider, _) {
          final favorites = favoritesProvider.likedBachelors;
          return ListView.builder(
            itemCount: favorites.length,
            itemBuilder: (context, index) {
              final favorite = favorites[index];
              return ListTile(
                leading: Image.asset(favorite.avatar),
                title: Text('${favorite.firstname} ${favorite.lastname}'),
                subtitle: Text(favorite.job ?? 'No job specified'),
              );
            },
          );
        },
      ),
    );
  }
}
