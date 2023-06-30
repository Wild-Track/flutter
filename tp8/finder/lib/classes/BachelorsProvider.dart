// ignore_for_file: file_names

import 'package:finder/classes/DataBase.dart';
import 'package:finder/classes/models/Bachelor.dart';
import 'package:flutter/material.dart';

class BachelorsProvider extends ChangeNotifier {
  List<Bachelor> _bachelors = [];

  BachelorsProvider() {
    _bachelors = Database.getFakeBachelors();
  }

  List<Bachelor> get bachelors => _bachelors;

  void setBachelors(List<Bachelor> bachelors) {
    _bachelors = bachelors;
    notifyListeners();
  }
}
