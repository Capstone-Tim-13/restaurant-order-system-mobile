import 'package:flutter/material.dart';

Color primary1 = const Color.fromARGB(255, 226, 94, 62);
Color primary3 = const Color.fromARGB(255, 240, 175, 159);

InputDecoration loginTheme = const InputDecoration(
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(12)),
    borderSide: BorderSide(
      width: 0.5,
      color: Colors.black,
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(12)),
    borderSide: BorderSide(
      width: 0.5,
      color: Colors.black,
    ),
  ),
);

TextStyle poppins = TextStyle(
  fontSize: 14,
  color: Colors.black,
  fontFamily: 'Poppins',
);
