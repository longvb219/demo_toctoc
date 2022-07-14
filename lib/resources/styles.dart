import 'package:flutter/material.dart';

TextStyle homeTopFocus(bool condition) {
  if (condition == true) {
    return TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.w600,
      color: Color.fromRGBO(255, 255, 255, 1),
    );
  } else {
    return TextStyle(
      fontSize: 18,
      color: Color.fromRGBO(255, 255, 255, 0.6),
    );
  }
}
