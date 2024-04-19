import 'package:flutter/material.dart';

var kColorScheme = ColorScheme.fromSeed(
  onPrimary: Colors.white,
  primary: Color.fromARGB(199, 119, 25, 167),
  onSecondary: Color.fromARGB(155, 21, 100, 211),
  brightness: Brightness.light,
  secondary: Color.fromARGB(255, 233, 217, 238),
  seedColor: Color.fromARGB(199, 119, 25, 167),
);

var darkColorScheme = ColorScheme.fromSeed(
    onPrimary: Colors.white,
    primary: Color.fromARGB(207, 98, 5, 110),
    brightness: Brightness.dark,
    onSecondary: Color.fromARGB(211, 4, 66, 159),
    secondary: Colors.black,
    seedColor: Color.fromARGB(207, 98, 5, 110));
