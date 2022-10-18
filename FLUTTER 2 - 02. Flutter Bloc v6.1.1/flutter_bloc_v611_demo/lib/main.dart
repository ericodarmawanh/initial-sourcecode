import 'package:flutter/material.dart';

import 'number_card.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flutter Bloc v6.11 Demo'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                NumberCard("Bloc\nBuilder", 0),
                SizedBox(
                  width: 40,
                ),
                NumberCard("Watch", 0),
                SizedBox(
                  width: 40,
                ),
                NumberCard("Select", 0),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            RaisedButton(
                child: Text(
                  'INCREMENT',
                  style: TextStyle(color: Colors.white),
                ),
                shape: StadiumBorder(),
                color: Colors.green[800],
                onPressed: () {})
          ],
        ));
  }
}
