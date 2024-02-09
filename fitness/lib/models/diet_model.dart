import 'dart:ui';

class DietModel {
  String name;
  String level;
  String duration;
  String calorie;
  String iconPath;
  Color boxColor;
  bool viewSelected;

  DietModel({
    required this.name,
    required this.iconPath,
    required this.level,
    required this.duration,
    required this.calorie,
    required this.boxColor,
    required this.viewSelected,
  });

  static List<DietModel> getDiets() {
    List<DietModel> diets = [];

    diets.add(
      DietModel(
          name: 'Honey Panckake',
          iconPath: 'assets/icons/honey-pancakes.svg',
          level: 'Easy',
          duration: '30mins',
          calorie: '180KCal',
          boxColor: const Color(0xff92A3FD),
          viewSelected: true),
    );

    diets.add(
      DietModel(
          name: 'Canai Bread',
          iconPath: 'assets/icons/canai-bread.svg',
          level: 'Easy',
          duration: '20mins',
          calorie: '230KCal',
          boxColor: const Color(0xffC58BF2),
          viewSelected: false),
    );

    return diets;
  }
}
