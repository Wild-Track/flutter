// ignore_for_file: file_names

import 'package:faker/faker.dart';
import 'package:finder/classes/models/Bachelor.dart';
import 'package:finder/classes/models/Gender.dart';

class Database {
  static List<Bachelor> getFakeBachelors() {
    final faker = Faker();

    final List<Bachelor> bachelors = [];
    final List<String> maleFirstNames = [];
    final List<String> femaleFirstNames = [];
    final List<String> maleAvatars = [];
    final List<String> femaleAvatars = [];

    for (int i = 1; i <= 15; i++) {
      maleFirstNames.add('MaleFirstName$i');
      femaleFirstNames.add('FemaleFirstName$i');
      maleAvatars.add('images/man-$i.png');
      femaleAvatars.add('images/woman-$i.png');
    }

    for (int i = 0; i < 10; i++) {
      final lastName = faker.person.lastName();

      final gender = i < 5 ? Gender.male : Gender.female;
      final firstName = gender == Gender.male ? maleFirstNames[i] : femaleFirstNames[i];

      final avatar = gender == Gender.male ? maleAvatars[i] : femaleAvatars[i];

      final bachelor = Bachelor(
        firstname: firstName,
        lastname: lastName,
        gender: gender,
        avatar: avatar,
        searchFor: [],
        job: faker.job.title(),
        description: faker.lorem.sentences(2).join(' '),
      );

      bachelors.add(bachelor);
    }

    return bachelors;
  }
}
