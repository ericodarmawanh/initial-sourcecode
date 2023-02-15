// Without Pattern Matching

void main(List<String> args) {
  IntStringReturnValue r = sebuahMethod();

  print(r.number);
  print(r.text);
}

class IntStringReturnValue {
  final int number;
  final String text;

  IntStringReturnValue(this.number, this.text);
}

IntStringReturnValue sebuahMethod() {
  return IntStringReturnValue(100, 'Hello');
}
