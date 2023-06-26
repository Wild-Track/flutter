class Lesson {
  String _name;

  Lesson(this._name);

  String get name => _name;

  set name(String newName) {
    _name = newName;
  }

  @override
  String toString() {
    return 'Lesson: $_name';
  }
}