void main(List<String> args) {
  (int, String) r = sebuahMethod();

  print(r.$1);
  print(r.$2);

  // Record sebagai Parameter
  print(menjadiString((2, 'Dua')));

  // Yang dibandingkan adalah valuenya (True)
  print(r == (100, 'Hello'));

  Person p1 = const Person('Tono');
  Person p2 = Person('Tono');

  // Yang dibandingkan adalah valuenya (False)
  print((p1, 'hello') == (p2, 'hello'));
  // Yang dibandingkan adalah valuenya (True)
  print((p1, 'hello') == (const Person('Tono'), 'hello'));
}

(int, String) sebuahMethod() {
  return (100, 'Hello');
}

// Record sebagai Parameter
String menjadiString((int, String) record) {
  return '${record.$1} ${record.$2}';
}

class Person {
  final String name;

  const Person(this.name);
}
