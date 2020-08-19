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

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.black,
              height: double.infinity,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Bloc State Management",
                      style: GoogleFonts.poppins(
                          fontSize: 25, color: Colors.white)),
                  Text("0",
                      style: GoogleFonts.poppins(
                          fontSize: 35,
                          fontWeight: FontWeight.w600,
                          color: Colors.white)),
                  RaisedButton(
                    onPressed: () {
                      //// BLOC INCREMENT
                    },
                    child: Text("+",
                        style: GoogleFonts.poppins(
                            fontSize: 20, fontWeight: FontWeight.w600)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RaisedButton(
                        onPressed: () {
                          //// BLOC UNDO
                        },
                        child: Text("Undo",
                            style: GoogleFonts.poppins(
                                fontSize: 20, fontWeight: FontWeight.w600)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      RaisedButton(
                        onPressed: () {
                          //// BLOC REDO
                        },
                        child: Text("Redo",
                            style: GoogleFonts.poppins(
                                fontSize: 20, fontWeight: FontWeight.w600)),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              height: double.infinity,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Cubit State Management",
                      style: GoogleFonts.poppins(
                        fontSize: 25,
                      )),
                  Text("0",
                      style: GoogleFonts.poppins(
                          fontSize: 35, fontWeight: FontWeight.w600)),
                  RaisedButton(
                    onPressed: () {
                      //// CUBIT INCREMENT
                    },
                    child: Text("+",
                        style: GoogleFonts.poppins(
                            fontSize: 20, fontWeight: FontWeight.w600)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RaisedButton(
                        onPressed: () {
                          //// CUBIT UNDO
                        },
                        child: Text("Undo",
                            style: GoogleFonts.poppins(
                                fontSize: 20, fontWeight: FontWeight.w600)),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      RaisedButton(
                        onPressed: () {
                          //// CUBIT REDO
                        },
                        child: Text("Redo",
                            style: GoogleFonts.poppins(
                                fontSize: 20, fontWeight: FontWeight.w600)),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
