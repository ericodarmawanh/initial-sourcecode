import 'dart:math';

class NumberRepository {
  int? getNumber() {
    Random random = Random();
    if(random.nextBool()) {
      return random.nextInt(100);
    } else {
      return null;
    }
  }
}