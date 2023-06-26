
void main(List<String> arguments) {
  print('1/');
  print('Hello World');

  String message = "Hello, World !";
  print('2/');
  print(message);

  print('3/');
  String hello = "Hello ";
  String world = "world ";
  print('$hello$world');

  print('4/ ');
  print(hello + world);

  print('/5');
  print(message.substring(0, 5));

  print('/6');
  const String constMessage = "Hello, World !";
  print('Le nombre de caractères est : ${constMessage.length}');

  print('/7');
  const String welcome = "Hello World";
  String numberWelcome =
      welcome.replaceAll('e', '3').replaceAll('l', '1').replaceAll('o', '8');
  print(numberWelcome);

  print('/8');
  List<String> words = welcome.split(" ");
  print(words);

  print('/9');
  String pwd = "";
  message = pwd.isEmpty ? "Mot de passe manquant" : "Mot de passe fourni";
  print(message);

  print('/10');
  String email = "john@doe.com";

  message = email.contains("@") && email.contains(".")
      ? "Adresse e-mail valide"
      : "Adresse e-mail invalide";
  print(message);
}
