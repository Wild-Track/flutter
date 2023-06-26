import 'lesson.dart';

class Student {
  String _firstname;
  String _lastname;
  List<Lesson> _lessons;

  Student(this._firstname, this._lastname) : _lessons = [];

  String get firstname => _firstname;

  set firstname(String newFirstname) {
    _firstname = newFirstname;
  }

  String get lastname => _lastname;

  set lastname(String newLastname) {
    _lastname = newLastname;
  }

  List<Lesson> get lessons => _lessons;

  void addLesson(Lesson lesson) {
    _lessons.add(lesson);
  }

  void removeLesson(Lesson lesson) {
    _lessons.remove(lesson);
  }

  @override
  String toString() {
    String lessonsString = _lessons.isEmpty ? 'No lessons' : _lessons.join(', ');
    return 'Student: $_firstname $_lastname\nLessons: $lessonsString';
  }
}