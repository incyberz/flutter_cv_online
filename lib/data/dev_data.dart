// Custom Class untuk menyimpan data-data teks
import 'package:simple_cv_online/models/dev_model.dart';

class DevData{
  DevData._();

  static DevModel devData = DevModel(
    name: 'Iin Sholihin',
    number: '0877-2900-7317',
    mail: 'incyberz@yahoo.com',
    bio: 'Seorang programmer yang masih dalam tahap belajar. Saya menyukai mobile programming, khususnya Flutter. Cita-cita saya ingin menjadi Flutter Developer!',
    hobbies: <String>[
      "Coding",
      "Hiking",
      "Farming"
    ],
    skillsAndProgress: <SkillAndProgress>[
      SkillAndProgress(name: 'Software Engineer', progress: .7),
      SkillAndProgress(name: 'Web Developer', progress: 1),
      SkillAndProgress(name: 'Flutter Developer', progress: .8),
    ]



  );
}