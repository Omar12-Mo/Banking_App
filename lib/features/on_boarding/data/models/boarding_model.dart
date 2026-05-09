import 'package:banking_mobile_app/generated/assets.dart';

class BoardingModel {
  final String image;
  final String tittle;
  final String description;

  BoardingModel({
    required this.image,
    required this.tittle,
    required this.description,
  });
}

List<BoardingModel> boardingModels = [
  BoardingModel(
    image: Assets.imagesOnboarding1,
    tittle: "Fastest Payment in the world",
    description:
        "Integrate multiple payment methoods to help you up the process quickly",
  ),
  BoardingModel(
    image: Assets.imagesOnboarding2,
    tittle: "The most Secoure Platfrom for Customer",
    description:
        "Built-in Fingerprint, face recognition and more, keeping you completely safe",
  ),
  BoardingModel(
    image: Assets.imagesOnboarding3,
    tittle: "Paying for Everything is Easy and Convenient",
    description:
        "Built-in Fingerprint, face recognition and more, keeping you completely safe",
  ),
];
