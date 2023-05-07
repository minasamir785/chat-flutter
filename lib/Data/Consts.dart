import 'package:flutter/material.dart';

const mainColor = Color.fromRGBO(25, 25, 50, 1);
const accentColor = Color.fromRGBO(43, 78, 255, 1);

const bottomNavigationBarColor = Color.fromRGBO(30, 29, 37, 1);
const myblack = Colors.black87;
const myWhite = Colors.white54;
var buttonState = MaterialStateProperty.resolveWith((states) {
  // If the button is pressed, return green, otherwise blue
  if (states.contains(MaterialState.pressed)) {
    return mainColor;
  }
  return accentColor;
});
