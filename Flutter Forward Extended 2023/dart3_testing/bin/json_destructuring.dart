void main(List<String> args) {
  var {'name' : nama, 'age' : umur} = httpRequest1();
  print('$nama $umur');

  var {'data' : {'name': name, 'numbers': numbers}} = httpRequest2();
  print('$name - $numbers');

  var json =  httpRequest1();

  // Kita dapat melakukan validasi dengan menggunakan json pattern matching
  switch (json) {
    case {'name': String nama2, 'age': int umur2, 'phone': String telp}:
      print('$nama2 $umur2 $telp');
      break;
    default:
      print('Error');
  }
}

Map<String, dynamic> httpRequest1() {
  return {
    'name': 'Joko',
    'age' : 20
  };
}

Map<String, dynamic> httpRequest2() {
  return {
    'data' : {
      'name' : 'Jennie Kim',
      'numbers': [12, 10, 88]
    }
  };
}

Map<String, dynamic> httpRequest3() {
  return {
    'name': 'Joko',
    'age' : 20,
    'phone': '08123456789'
  };
}