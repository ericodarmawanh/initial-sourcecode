void main(List<String> args) {
  var json =  httpRequest1();

  switch (json) {
    case {'name': String nama2, 'age': int umur2, 'phone': String telp}:
      print('$nama2 $umur2 $telp');
      break;
    default:
      print('Error');
  }

  if(json case {'name': String nama2, 'age': int umur2, 'phone': String telp}) {
    print('$nama2 $umur2 $telp');
  } else {
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