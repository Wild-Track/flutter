// ignore_for_file: file_names

import 'package:finder/classes/models/Gender.dart';

class Bachelor {
  final String firstname;
  final String lastname;
  final Gender gender;
  final String avatar;
  String? job;
  String? description;
  List<Gender>? searchFor;

  Bachelor({
    required this.firstname,
    required this.lastname,
    required this.gender,
    required this.avatar,
    this.job,
    this.description,
    this.searchFor,
  });
}
