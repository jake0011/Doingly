// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';

/// The color used for the orange color in the app.
Color OrangeColor = Color.fromARGB(255, 231, 155, 155);

/// The text style used for the title in the app.
TextStyle DoinglyTitleStyle = TextStyle(
  fontFamily: 'Poppins',
  fontWeight: FontWeight.bold,
  color: listColor,
  fontSize: 55,
);

/// The text style used for the todo title in the app.
TextStyle DoinglyTodoTitle = TextStyle(
  fontFamily: 'Poppins',
  fontWeight: FontWeight.bold,
  color: OrangeColor,
  fontSize: 25,
);

/// The text style used for the dark todo title in the app.
TextStyle darkTodoTitle = TextStyle(
  fontFamily: 'Poppins',
  fontWeight: FontWeight.bold,
  color: OrangeColor,
  fontSize: 30,
);

/// The color used for the list in the app.
Color listColor = const Color.fromRGBO(244, 161, 138, 1);
