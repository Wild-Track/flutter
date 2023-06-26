import 'package:exo5/classes/User.dart';
import 'package:exo5/classes/lesson.dart';
import 'package:exo5/classes/student.dart';

void main(List<String> arguments) {
  User johndoe = User("John", "Doe", "john@doe.com");
  johndoe.password = 'password123';

  print(johndoe);
  johndoe.sayHello();

  String inputPassword1 = 'password123';
  if (johndoe.authenticate(inputPassword1)) {
    print('Mot de passe correct pour l\'utilisateur $johndoe');
  } else {
    print('Mot de passe incorrect pour l\'utilisateur $johndoe');
  }

  // Cas où le mot de passe est incorrect
  String inputPassword2 = 'incorrectPassword';
  if (johndoe.authenticate(inputPassword2)) {
    print('Mot de passe correct pour l\'utilisateur $johndoe');
  } else {
    print('Mot de passe incorrect pour l\'utilisateur $johndoe');
  }

  print('10/');
  Student johnDoe = Student('John', 'Doe');
  Lesson italian = Lesson('Italian');
  johnDoe.addLesson(italian);
  print(johnDoe);

  Lesson french = Lesson('French');
  johnDoe.addLesson(french);
  print(johnDoe);

  johnDoe.removeLesson(italian);
  print(johnDoe);
}
