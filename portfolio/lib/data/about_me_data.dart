// ignore_for_file: public_member_api_docs, sort_constructors_first
class AboutMeData {
  String professionalSummary =
      '''Aspiring Software Developer pursuing an MCA in Artificial Intelligence and Data Science, with a BCA degree (Specialization in Cloud Computing) and top academic honors. Strong expertise in cross-platform application development, cloud computing (AWS, Firebase), and AI-driven solutions. Passionate  about designing efficient, user-centric software while staying updated with the latest industry trends and technologies. Seeking to contribute technical expertise and innovation to a dynamic team.''';

  List<SpecializationModel> specializations = [
    SpecializationModel(
      name: "Web Development",
      description: "I am expert in Website Development",
      imageUrl: "example.jpg",
    ),
    SpecializationModel(
      name: "Web Development",
      description: "I am expert in Website Development",
      imageUrl: "example.jpg",
    ),
    
    SpecializationModel(
      name: "Web Development",
      description: "I am expert in Website Development",
      imageUrl: "example.jpg",
    ),
    
    SpecializationModel(
      name: "Web Development",
      description: "I am expert in Website Development",
      imageUrl: "example.jpg",
    ),
     SpecializationModel(
      name: "Web Development",
      description: "I am expert in Website Development",
      imageUrl: "example.jpg",
    ), SpecializationModel(
      name: "Web Development",
      description: "I am expert in Website Development",
      imageUrl: "example.jpg",
    ), SpecializationModel(
      name: "Web Development",
      description: "I am expert in Website Development",
      imageUrl: "example.jpg",
    ),
  ];
}



class SpecializationModel {
  String name;
  String description;
  String imageUrl;

  SpecializationModel({
    required this.name,
    required this.description,
    required this.imageUrl,
  });
}
