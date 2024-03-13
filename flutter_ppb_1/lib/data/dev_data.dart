/// Custom class for the development data
library;

import 'package:flutter_ppb_1/models/dev_models.dart';

class DevData {
  DevData._();

  static DevModels devData = DevModels(
    name: 'Fahmi Muhazir',
    phone: '081234567890',
    email: 'fahmimuhazir12@gmail.com',
    address: 'Sukolilo, Surabaya',
    bio: devBio,
    hobbies: <String>[
      'Reading',
      'Coding',
      'Gaming',
    ],
    photo: 'images/avatar.png',
    skillsAndProgress: <SkillsAndProgress>[
      SkillsAndProgress(
        skill: 'Flutter',
        progress: 0.8,
      ),
      SkillsAndProgress(
        skill: 'Dart',
        progress: 0.7,
      ),
      SkillsAndProgress(
        skill: 'Java',
        progress: 0.6,
      ),
      SkillsAndProgress(
        skill: 'Kotlin',
        progress: 0.5,
      ),
    ],
    projects: <String>[
      'Flutter CV App',
      'Flutter PPB 1',
      'Flutter PPB 2',
    ],
  );

  static const String devBio = """
I am a Flutter Developer
""";
}
