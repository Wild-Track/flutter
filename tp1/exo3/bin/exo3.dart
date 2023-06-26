import 'package:exo3/exo3.dart' as exo3;
import 'package:exo3/exo3.dart';

void main(List<String> arguments) {
  print('1/');
  List<String> planets = [
    "Terre",
    "Mars",
    "Mercure",
    "Saturne",
    "Vénus",
    "Neptune",
    "Uranus",
    "Jupiter"
  ];
  planets.sort();
  print(planets.reversed);

  print('2/');
  for (var planet in planets) {
    print(planet.toUpperCase());
  }

  print('3/');
  int index = 0;
  while (index < planets.length) {
    print(planets[index][0]);
    index++;
  }

  print('4/');
  index = 0;
  do {
    print("${index + 1}- ${planets[index]}");
    index++;
  } while (index < planets.length);

  print('5/');
  index = 0;
  while (index < planets.length) {
    if (exo3.lastLetterIsVowels(planets[index])) {
      print(planets[index]);
    }
    index++;
  }

  print('6/');
  planets.add("Pluton");
  print(planets);

  print('7/');
  List<Planet> planetList = [
    Planet("Mercure", 91.69),
    Planet("Saturne", 1275),
    Planet("Neptune", 4351.40),
    Planet("Jupiter", 628.73),
    Planet("Mars", 78.34),
    Planet("Venus", 41.40),
    Planet("Uranus", 2723.95)
  ];
  planetList.sort((a, b) => a.distance.compareTo(b.distance));
  print(planetList);

  print('8/');
  Map<String, String> apollo = {
    "07_1969": "Apollo 11",
    "11_1969": "Apollo 12",
    "02_1971": "Apollo 14",
    "07_1971": "Apollo 15",
    "04_1972": "Apollo 16",
    "12_1972": "Apollo 17"
  };
  print(apollo);
  print('Valeur de 07_1971: ${apollo['07_1971']}');
  print('Clés: ${apollo.keys}');
  print('Clés: ${apollo.values}');

  print('9/');
  apollo["07_1969"] = "Neil Armstrong + Buzz Aldrin";
  print('Valeur de 07_1969: ${apollo['07_1969']}');

  print('10/');
  SolarSystemElement sun = SolarSystemElement('Sun', Kind.star);
  SolarSystemElement earth = SolarSystemElement('Earth', Kind.planet);
  SolarSystemElement moon = SolarSystemElement('Moon', Kind.satellite);
  SolarSystemElement pluto = SolarSystemElement('Pluto', Kind.satellite);
  print(sun);
  print(earth);
  print(moon);
  print(pluto);

}
