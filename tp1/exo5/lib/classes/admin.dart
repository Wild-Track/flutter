import 'User.dart';

class Admin extends User {
  late int _grade;

  Admin(String firstname, String lastname, String email) : super(firstname, lastname, email) {
    _grade = 1;
  }

  int get grade => _grade;

  set grade(int newGrade) {
    _grade = newGrade;
  }
}