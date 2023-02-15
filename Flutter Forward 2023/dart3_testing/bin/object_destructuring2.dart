void main(List<String> args) {
  Person p = Person(name: 'Jennie Kim', age: 20);
  p.phoneNumber = '123456789';

  var Person(:name, :phoneNumber) = p;

  print(name);
  print(phoneNumber);
}

class Person {
  final String name;
  final int age;
  String? _phoneNumber;
  String? studentID;

  Person({this.name = 'no name', this.age = 0});

  String? get phoneNumber => _phoneNumber;
  set phoneNumber(String? value) =>
      _phoneNumber = value != null && value.length >= 8 ? value : '';
}
