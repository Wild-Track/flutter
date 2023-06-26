import 'package:crypto/crypto.dart';
import 'dart:convert';

class User {
  String firstname;
  String lastname;
  String email;
  late String _password;
  late String _hash;

  User(this.firstname, this.lastname, this.email);

  set password(String newPassword) {
    _password = newPassword;
    _hash = _generateHash(newPassword);
  }

  String _generateHash(String password) {
    List<int> bytes = utf8.encode(password);
    Digest digest = sha256.convert(bytes);
    return digest.toString();
  }

  bool authenticate(String inputPassword) {
    return _hash == _generateHash(inputPassword);
  }

  void sayHello() {
    print("Hello, I'm $firstname $lastname!");
  }

  @override
  String toString() {
    return 'Nom: $firstname $lastname, Email: $email, Password: *****';
  }
}
