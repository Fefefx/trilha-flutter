import 'dart:math';

class GenerateRandomNumberService {
  static int generateRandomNumber(int maxNumber) {
    Random numberGenerator = Random();
    return numberGenerator.nextInt(maxNumber);
  }
}
