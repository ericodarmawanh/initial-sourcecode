// ignore_for_file: dead_code

void main(List<String> args) {
  // Kalau depannya 6 dan belakangnya 6 -> bagus
  // 1, 3, dan 5 bagus
  // 2, 4 -> jelek
  // di luar 1 - 6 -> tidak valid

  int first = 1;
  int next = 1;

  switch (first) {
    case 6 when next == 6:
      print('bagus');
    case 1 || 3 || 5:
      print('bagus');
    case >= 1 && <= 6 :
      print('jelek');
    default:
      print('angka tidak valid');
  }
}