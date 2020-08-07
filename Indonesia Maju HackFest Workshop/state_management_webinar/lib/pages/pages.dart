import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

part 'first_main_page.dart';
part 'first_next_page.dart';
part 'second_main_page.dart';
part 'second_next_page.dart';

Text makeText(String text, {double fontSize = 16}) {
  print('====> MAKING TEXT $text');
  return Text(
    text,
    style: GoogleFonts.poppins(fontSize: fontSize),
  );
}

RaisedButton makeRaisedButton(String text, Function onTap,
    {Color color = Colors.amber}) {
  print('====> MAKING BUTTON $text');
  return RaisedButton(
    onPressed: onTap,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
    color: color,
    child: Text(
      text,
      style: GoogleFonts.poppins(fontSize: 18),
    ),
  );
}
