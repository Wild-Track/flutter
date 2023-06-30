// ignore_for_file: file_names

import 'package:finder/classes/components/BachelorDetails.dart';
import 'package:finder/classes/BachelorsFavoritesProvider.dart';
import 'package:finder/classes/models/Bachelor.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BachelorPreview extends StatelessWidget {
  final Bachelor bachelor;

  const BachelorPreview({
    Key? key,
    required this.bachelor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<BachelorsFavoritesProvider>(
        builder: (context, bachelorsFavoritesProvider, _) {
      final isLiked = bachelorsFavoritesProvider.isBachelorLiked(bachelor);

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
        trailing: IconButton(
          icon: Icon(
            isLiked ? Icons.favorite : Icons.favorite_border,
            color: isLiked ? Colors.red : null,
          ),
          onPressed: () {
            bachelorsFavoritesProvider.toggleLike(bachelor);
          },
        ),
      );
    });
  }
}
