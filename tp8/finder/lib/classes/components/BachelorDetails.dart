// ignore_for_file: file_names

import 'package:finder/classes/BachelorsFavoritesProvider.dart';
import 'package:finder/classes/models/Bachelor.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BachelorDetails extends StatelessWidget {
  final Bachelor bachelor;

  const BachelorDetails({
    Key? key,
    required this.bachelor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final favoritesProvider = Provider.of<BachelorsFavoritesProvider>(context);
    final isLiked = favoritesProvider.isBachelorLiked(bachelor);

    return Scaffold(
      appBar: AppBar(
        title: Text('${bachelor.firstname} ${bachelor.lastname}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(bachelor.avatar),
                if (isLiked)
                  const Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 80,
                  ),
              ],
            ),
            Text('Job: ${bachelor.job ?? 'No job specified'}'),
            Text(
                'Description: ${bachelor.description ?? 'No description available'}'),
            ElevatedButton(
              onPressed: () {
                favoritesProvider.toggleLike(bachelor);
                final isLiked = favoritesProvider.isBachelorLiked(bachelor);
                final snackBarContent = isLiked
                    ? 'You liked ${bachelor.firstname} ${bachelor.lastname}'
                    : 'You unliked ${bachelor.firstname} ${bachelor.lastname}';

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(snackBarContent),
                  ),
                );
              },
              child: Text(isLiked ? 'Unlike' : 'Like'),
            ),
          ],
        ),
      ),
    );
  }
}
