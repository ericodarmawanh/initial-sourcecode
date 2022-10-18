import 'package:flutter/material.dart';
import 'package:flutter_45/color_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ColorBloc bloc = BlocProvider.of<ColorBloc>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('title'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<ColorBloc, Color>(
              builder: (context, state) {
                return Container(
                  width: 100,
                  height: 100,
                  color: state,
                );
              },
            ),
            const SizedBox(
              height: 20,
            ),
            RaisedButton(
              onPressed: () {
                bloc.add(ColorEvent.toAmber);
              },
              child: const Text('To Amber'),
            ),
            const SizedBox(
              height: 10,
            ),
            RaisedButton(
              onPressed: () {
                bloc.add(ColorEvent.toLightBlue);
              },
              child: const Text('To Light Blue'),
            ),
          ],
        ),
      ),
    );
  }
}
