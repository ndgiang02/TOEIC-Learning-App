import 'package:flutter/material.dart';

class CustomTextStyle {
  static const TextStyle appbar = TextStyle(
    fontSize: 22.0,
    fontWeight: FontWeight.bold,
    color: Colors.white,
  );

  static const TextStyle header = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static const TextStyle exam = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static const TextStyle item = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.italic,
  );

  static const TextStyle normal = TextStyle(
    fontSize: 14,
    color: Colors.grey,

  );

  static const TextStyle mini = TextStyle(
    fontSize: 12,
    fontStyle: FontStyle.italic,
    color: Colors.lightBlue,
    decoration: TextDecoration.underline,
  );
}
