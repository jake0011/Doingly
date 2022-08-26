import 'package:flutter/material.dart';
import 'package:todo_app/Screens/Welcome/welcome_screen.dart';

class Backbutton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const Backbutton({
    Key? key, required this.text,
     required this.onPressed, 
  }) : super(key: key);

    @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
      ),
    );
  }
}