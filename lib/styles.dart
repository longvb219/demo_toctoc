import 'package:flutter/material.dart';

TextStyle homeTopFocus(bool condition) {
  if (condition == true) {
    return TextStyle(
      fontSize: 22,
    );
  } else {
    return TextStyle(
      fontSize: 18,
      color: Color.fromRGBO(255, 255, 255, 0.6),
    );
  }
}
