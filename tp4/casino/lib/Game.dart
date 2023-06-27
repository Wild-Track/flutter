// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'dart:math';

class Game extends StatefulWidget {
  const Game({super.key});

  @override
  State<Game> createState() => _GameState();
}

class _GameState extends State<Game> {
  List<String> images = [
    'images/bar.png',
    'images/cerise.png',
    'images/cloche.png',
    'images/diamant.png',
    'images/fer-a-cheval.png',
    'images/pasteque.png',
    'images/sept.png',
  ];

  String message = '';
  String image1 = 'images/sept.png';
  String image2 = 'images/sept.png';
  String image3 = 'images/sept.png';

  void playGame() {
    setState(() {
      Random random = Random();
      image1 = images[random.nextInt(images.length)];
      image2 = images[random.nextInt(images.length)];
      image3 = images[random.nextInt(images.length)];

      if (image1 == image2 && image2 == image3) {
        if (image1 == 'images/sept.png') {
          message = '777';
        } else {
          message = 'Jackpot !';
        }
      } else {
        message = 'You lost, try again !';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bandit Manchot'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              message,
              style: const TextStyle(fontSize: 24),
            ),
            Container(
              padding: const EdgeInsets.all(50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    image1,
                    width: 100,
                  ),
                  Image.asset(
                    image2,
                    width: 100,
                  ),
                  Image.asset(
                    image3,
                    width: 100,
                  ),
                ],
              ),
            ),
            FloatingActionButton(
              onPressed: playGame,
              child: const Text('Jouer !'),
            ),
          ],
        ),
      ),
    );
  }
}
