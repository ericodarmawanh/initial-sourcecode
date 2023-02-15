// With Pattern Matching

void main(List<String> args) {
  (int, String) r = sebuahMethod();

  print(r.$1);
  print(r.$2);
}

(int, String) sebuahMethod() {
  return (100, 'Hello');
}
