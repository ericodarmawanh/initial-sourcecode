import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Second Page"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                onPressed: () {},
                child: Text("Back to Main Page"),
              ),
              SizedBox(
                height: 10,
              ),
              RaisedButton(
                onPressed: () {},
                child: Text("Go to Third Page"),
              )
            ],
          ),
        ));
  }
}
