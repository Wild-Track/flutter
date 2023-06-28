// ignore_for_file: file_names

import 'package:finder/classes/models/Bachelor.dart';
import 'package:flutter/material.dart';

class BachelorDetails extends StatefulWidget {
  final Bachelor bachelor;
  final Function(Bachelor) onLikeChanged;
  bool isLiked;

  BachelorDetails(
      {Key? key,
      required this.bachelor,
      required this.isLiked,
      required this.onLikeChanged})
      : super(key: key);

  @override
  State<BachelorDetails> createState() => _BachelorDetailsState();
}

class _BachelorDetailsState extends State<BachelorDetails> {

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
                if (widget.isLiked)
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
                  widget.isLiked = !widget.isLiked;
                  widget.onLikeChanged(widget.bachelor);
                });
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                      content: Text(
                          'You ${widget.isLiked ? 'liked' : 'unliked'} ${widget.bachelor.firstname} ${widget.bachelor.lastname}')),
                );
              },
              child: Text(widget.isLiked ? 'Unlike' : 'Like'),
            ),
          ],
        ),
      ),
    );
  }
}
