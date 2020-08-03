import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Third Page"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                onPressed: () {},
                child: Text("Back to Second Page"),
              ),
              SizedBox(
                height: 10,
              ),
              RaisedButton(
                onPressed: () {},
                child: Text("Back to Main Page"),
              )
            ],
          ),
        ));
  }
}
