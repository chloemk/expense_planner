import 'dart:math';

class RandomStringGenerator {
  static String generateRandomString(int len) {
    var r = Random();

    return String.fromCharCodes(
      List.generate(len, (index) => r.nextInt(33) + 89),
    );
  }
}
