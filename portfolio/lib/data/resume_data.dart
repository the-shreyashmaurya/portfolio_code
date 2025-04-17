// ignore_for_file: public_member_api_docs, sort_constructors_first
class ResumeData {
  // Education
  List<EducationData> education = [
    EducationData(
      degree: "Master of Computer Applications",
      year: "2024 - 2026",
      institution: "D. Y. Patil International University, Pune",
    ),
    EducationData(
      degree: "Bachelor of Computer Applications",
      year: "2021 - 2024",
      institution: "D. Y. Patil International University, Pune",
    ),
    EducationData(
      degree: "12 th",
      year: "2021",
      institution: "Nanaji Joshi Jr. College, Shahpur, Bhandara",
    ),
    EducationData(
      degree: "10 th",
      year: "2019",
      institution: "St. Peter's School, Bela, Bhandara",
    ),
  ];

  // Experience
  List<EducationData> experience = [
    EducationData(
      degree: "Android Developer Intern",
      year: "Feb 2024 - Mar 2024",
      institution: "CODTECH IT Solutions",
      description: "This is my internship ",
    ),
  ];

  // Skills
  List<SkillsData> skills = [SkillsData(name: "Flutter", imageUrl: "")];
}

class EducationData {
  String degree;
  String year;
  String institution;
  String? description;
  EducationData({
    required this.degree,
    required this.year,
    required this.institution,
    this.description,
  });
}

class SkillsData {
  String name;
  String imageUrl;
  SkillsData({required this.name, required this.imageUrl});
}
