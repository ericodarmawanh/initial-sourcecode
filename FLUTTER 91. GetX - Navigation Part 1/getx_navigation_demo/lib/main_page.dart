import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Main Page"),
        ),
        body: Center(
          child: RaisedButton(
            onPressed: () {},
            child: Text("Go to Second Page"),
          ),
        ));
  }
}
