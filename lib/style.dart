import 'package:flutter/material.dart';

Color primary1 = const Color.fromARGB(255, 226, 94, 62);
Color primary2 = const Color.fromARGB(255, 252, 252, 252);
Color primary3 = const Color.fromARGB(255, 240, 175, 159);
Color primary4 = const Color.fromARGB(255, 120, 53, 37);

Color secondary1 = const Color.fromARGB(255, 144, 12, 63);
Color secondary2 = const Color.fromARGB(255, 199, 133, 159);
Color secondary3 = const Color.fromARGB(255, 77, 15, 39);

Color tertiary1 = const Color.fromARGB(255, 255, 188, 128);
Color tertiary2 = const Color.fromARGB(255, 255, 221, 191);
Color tertiary3 = const Color.fromARGB(255, 255, 188, 128);

Color surface = const Color.fromARGB(255, 198, 198, 198);
Color bright = const Color.fromARGB(255, 216, 216, 216);
Color onSurface = const Color.fromARGB(255, 29, 29, 29);
Color outline = const Color.fromARGB(255, 115, 115, 115);
Color moreBright = const Color.fromARGB(255, 241, 241, 241);
Color lowToBlue = const Color.fromARGB(255, 242, 243, 246);

// Color gray = const Color.fromARGB(255, 134, 134, 134);
// Color lightGray = const Color.fromARGB(255, 216, 216, 216);
Color orange = const Color.fromARGB(255, 238, 167, 52);
Color yellow = const Color.fromARGB(255, 239, 203, 63);
Color facebookBlue = const Color.fromARGB(255, 57, 89, 152);
Color googleBlue = const Color.fromARGB(255, 66, 133, 244);

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

InputDecoration userInputNote = const InputDecoration(
  alignLabelWithHint: true,
  filled: true,
  fillColor: Color.fromARGB(255, 241, 241, 241),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(12)),
    borderSide: BorderSide.none,
  ),
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(12)),
    borderSide: BorderSide.none,
  ),
);

BoxDecoration homePageMenu = BoxDecoration(
    color: primary2,
    borderRadius: BorderRadius.circular(32),
    boxShadow: const [
      BoxShadow(
          color: Colors.black12,
          blurRadius: 8,
          spreadRadius: 1,
          offset: Offset(0, 5))
    ]);

TextStyle poppins = const TextStyle(
  fontWeight: FontWeight.w400,
  fontSize: 14,
  color: Colors.black,
  fontFamily: 'Poppins',
);
