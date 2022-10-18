import 'package:flutter/material.dart';
import 'package:flutter_45/color_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider<ColorBloc>(
          create: (BuildContext context) => ColorBloc(),
          child: const MainPage()),
    );
  }
}
