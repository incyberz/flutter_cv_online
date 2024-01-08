class DevModel{
  final String name;
  final String number;
  final String mail;
  final String bio;
  final List<String> hobbies;
  final List<SkillAndProgress> skillsAndProgress;

  DevModel({
    required this.name,
    required this.number,
    required this.mail,
    required this.bio,
    required this.hobbies,
    required this.skillsAndProgress,
  });
}

// Skills and Progress
class SkillAndProgress{
  final String name;
  final double progress;
  SkillAndProgress({
    required this.name,
    required this.progress
});
}