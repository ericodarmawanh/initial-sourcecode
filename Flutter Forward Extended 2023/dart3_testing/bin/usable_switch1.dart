void main(List<String> args) {
  // Kalau depannya 6 dan belakangnya 6 -> bagus
  // 1, 3, dan 5 bagus
  // 2, 4 -> jelek
  // di luar 1 - 6 -> tidak valid

  int first = 1;
  int next = 1;

  switch (first) {
    case 6:
      if (next == 6) {
        print('bagus');
      } else {
        print('jelek');
      }
      break;
    case 1:
    case 3:
    case 5:
      print('bagus');
      break;
    default:
      if (first >= 1 && first <= 6) {
        print('jelek');
      } else {
        print('angka tidak valid');
      }
  }
}
