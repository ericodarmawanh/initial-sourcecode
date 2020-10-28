import 'dart:io';
import 'package:flutter/material.dart';
import 'camera_page.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  File imageFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Camera Test"),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 10),
              width: 300,
              height: 450,
              color: Colors.grey[200],
              child: (imageFile != null) ? Image.file(imageFile) : SizedBox(),
            ),
            RaisedButton(
              child: Text("Take Picture"),
              onPressed: () async {
                imageFile = await Navigator.push<File>(
                    context, MaterialPageRoute(builder: (_) => CameraPage()));
                setState(() {});
              },
            )
          ],
        ),
      ),
    );
  }
}