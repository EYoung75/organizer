import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const red = Color.fromRGBO(186, 24, 32, 1);
const bone = Color.fromRGBO(233, 225, 218, 1);

dynamic titletext = GoogleFonts.oswald(
  fontSize: 30,
  color: Colors.white,
  shadows: [
    Shadow(
      color: Color.fromRGBO(0, 0, 0, 1),
      blurRadius: 10,
      offset: Offset.fromDirection(10.0),
    )
  ],
);

dynamic subtitleText = GoogleFonts.oswald(
  fontWeight: FontWeight.bold,
  fontSize: 26,
  color: red,
  letterSpacing: 3.0,
  shadows: [
    Shadow(
      color: Color.fromRGBO(0, 0, 0, .6),
      blurRadius: 7,
      offset: Offset.fromDirection(.1, .5 ),
    )
  ],
);

dynamic paragraphBlack = GoogleFonts.oswald(
  fontSize: 20,
  color: Colors.black,
);

dynamic paragraphGray = GoogleFonts.charm(
  fontSize: 20,
  color: Colors.grey[700],
);
