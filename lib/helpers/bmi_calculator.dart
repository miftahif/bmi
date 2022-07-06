import 'package:bmi/constants/constant.dart';

class BmiCalculator {
  int? height;
  int? weight;
  double? bmi;
  String? bmiCategory;
  String? bmiDesccription;

  BmiCalculator({required this.height, required this.weight});
  BmiCalculator.fromBmiValue(this.bmi) {
    // this.bmi = bmi;
  }

  double CalculateBmi() {
    double heightInMeter = height! / 100;
    final h = (heightInMeter * heightInMeter);
    bmi = weight! / h;

    return bmi!;
  }

  String determineBmiCategory() {
    String category = "";
    if (bmi! < 16.0) {
      category = underweightSevere;
    } else if (bmi! < 17) {
      category = underweightModerate;
    } else if (bmi! < 18.5) {
      category = underweightMild;
    } else if (bmi! < 25) {
      category = normal;
    } else if (bmi! < 30) {
      category = overweight;
    } else if (bmi! < 35) {
      category = obeseI;
    } else if (bmi! < 40) {
      category = obeseII;
    } else if (bmi! >= 40) {
      category = obeseIII;
    }

    bmiCategory = category;
    return bmiCategory!;
  }

  String getHealRiskDescription() {
    String desc = "";
    switch (bmiCategory) {
      case underweightSevere:
      case underweightModerate:
      case underweightMild:
        desc = "Kemungkinan kekurangan nutrisi dan osteoporosis";
        break;
      case normal:
        desc = "Rendah Resiko";
        break;
      case overweight:
        desc = "potensi kecil diabetes";
        break;
      case obeseI:
      case obeseII:
      case obeseIII:
        desc = "potensi besar diabetes";
        break;

      default:
    }

    bmiDesccription = desc;
    return bmiDesccription!;
  }
}
