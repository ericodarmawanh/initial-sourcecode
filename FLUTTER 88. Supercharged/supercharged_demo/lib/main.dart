import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  final List<Person> persons = [
    Person('Doni', 47),
    Person('Ayu', 20),
    Person('Zorro', 33),
    Person('Charlie', 21)
  ];

  @override
  Widget build(BuildContext context) {
    List<Person> sortedPersons = persons;
    DateTime twentyThreeMinutesAgo = DateTime.now();

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xFF990000),
          title: Text(
            "Supercharge Demo",
            style: GoogleFonts.poppins(),
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 15, bottom: 3),
                child: Text('List Person:',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF990000),
                    )),
              ),
              // note: list person
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: sortedPersons
                    .map((e) => Text("> ${e.name} [${e.age}]",
                        style: GoogleFonts.poppins(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        )))
                    .toList(),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15, bottom: 3),
                child: Text('Age of the Oldest:',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF990000),
                    )),
              ),
              // note: age of the oldest
              Text("- years old",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  )),
              Padding(
                padding: EdgeInsets.only(top: 15, bottom: 3),
                child: Text('Average age:',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF990000),
                    )),
              ),
              // note: average age
              Text("- years old",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  )),
              Padding(
                padding: EdgeInsets.only(top: 15, bottom: 3),
                child: Text('Groups of 2:',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF990000),
                    )),
              ),
              // note: group of 2
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: []
                        .map((e) => Text("> ${e.name} [${e.age}]",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            )))
                        .toList(),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: []
                        .map((e) => Text("> ${e.name} [${e.age}]",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            )))
                        .toList(),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 15, bottom: 3),
                child: Text('Groups by age:',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF990000),
                    )),
              ),
              // note: group by age
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: []
                        .map((e) => Text("> ${e.name} [${e.age}]",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            )))
                        .toList(),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: []
                        .map((e) => Text("> ${e.name} [${e.age}]",
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            )))
                        .toList(),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 15, bottom: 3),
                child: Text('This time:',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF990000),
                    )),
              ),
              // note: this time
              Text("${DateTime.now().hour} : ${DateTime.now().minute}",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  )),
              Padding(
                padding: EdgeInsets.only(top: 15, bottom: 3),
                child: Text('23 minutes ago:',
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF990000),
                    )),
              ),
              // note: 23 minutes ago
              Text(
                  "${twentyThreeMinutesAgo.hour} : ${twentyThreeMinutesAgo.minute}",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  )),
            ],
          ),
        ));
  }
}

class Person {
  String name;
  int age;

  Person(this.name, this.age);
}
