// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:finder/classes/models/Bachelor.dart';

class BachelorsFavoritesProvider extends ChangeNotifier {
  final List<Bachelor> _likedBachelors = [];

  List<Bachelor> get likedBachelors => _likedBachelors;

  void toggleLike(Bachelor bachelor) {
    if (_likedBachelors.contains(bachelor)) {
      _likedBachelors.remove(bachelor);
    } else {
      _likedBachelors.add(bachelor);
    }
    notifyListeners();
  }

  bool isBachelorLiked(Bachelor bachelor) {
    return _likedBachelors.contains(bachelor);
  }
}
