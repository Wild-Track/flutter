// ignore_for_file: file_names

import 'package:finder/classes/models/Bachelor.dart';
import 'package:flutter/material.dart';

class BachelorDetails extends StatefulWidget {
  final Bachelor bachelor;

  const BachelorDetails({Key? key, required this.bachelor}) : super(key: key);

  @override
  State<BachelorDetails> createState() => _BachelorDetailsState();
}

class _BachelorDetailsState extends State<BachelorDetails> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.bachelor.firstname} ${widget.bachelor.lastname}'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(widget.bachelor.avatar),
                if (isLiked)
                  const Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 80,
                  ),
              ],
            ),
            Text('Job: ${widget.bachelor.job ?? 'No job specified'}'),
            Text(
                'Description: ${widget.bachelor.description ?? 'No description available'}'),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  isLiked = !isLiked;
                });
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                      content: Text(
                          'You liked ${widget.bachelor.firstname} ${widget.bachelor.lastname}')),
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
