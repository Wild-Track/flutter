bool lastLetterIsVowels(String string) {
  return ['a', 'e', 'i', 'o', 'u', 'y']
      .contains(string[string.length - 1].toLowerCase());
}

class Planet {
  String name;
  double distance;

  Planet(this.name, this.distance);

  @override
  String toString() {
    return 'Nom: $name Distance: $distance Mkm';
  }
}

enum Kind { planet, star, satellite, asteroid, comet }

class SolarSystemElement {
  String name;
  Kind kind;

  SolarSystemElement(this.name, this.kind);

  @override
  String toString() {
    return 'Nom: $name Type: $kind';
  }
}
