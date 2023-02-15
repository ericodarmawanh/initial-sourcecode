void main(List<String> args) {
  var (number, text) = sebuahMethod();
  print('$number $text');

  var (_, text2) = sebuahMethod();
  print(text2);

  int number3;
  String text3;
  
  (number3, text3) = sebuahMethod();
  print('$number3 $text3');
}

(int, String) sebuahMethod() {
  return (100, 'Hello');
}
