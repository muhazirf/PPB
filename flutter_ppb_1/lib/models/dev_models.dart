// Removed unused import directive for 'dart:ffi'

class DevModels {
  final String name;
  final String email;
  final String phone;
  final String address;
  final String photo;
  final String bio;
  final List<String> hobbies;
  final List<SkillsAndProgress> skillsAndProgress;
  final List<String> projects;

  DevModels({
    required this.name,
    required this.email,
    required this.phone,
    required this.address,
    required this.photo,
    required this.bio,
    required this.hobbies,
    required this.skillsAndProgress,
    required this.projects,
  });
}

// Skill and project models
class SkillsAndProgress {
  final String skill;
  final double progress;
  SkillsAndProgress({
    required this.skill,
    required this.progress,
  });
}
