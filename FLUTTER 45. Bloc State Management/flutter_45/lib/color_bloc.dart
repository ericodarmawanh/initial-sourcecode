import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

enum ColorEvent {toAmber, toLightBlue}

class ColorBloc extends Bloc<ColorEvent, Color> {
  @override
  Color get initialState => Colors.amber;

  @override
  Stream<Color> mapEventToState(ColorEvent event) async* {
    if(event == ColorEvent.toAmber) {
      yield Colors.amber;
    } else {
      yield Colors.lightBlue;
    }
  }
}