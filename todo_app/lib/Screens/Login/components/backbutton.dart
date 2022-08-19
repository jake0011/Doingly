import 'package:flutter/material.dart';

class Backbutton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const Backbutton({
    Key? key, required this.text,
     required this.onPressed, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(100),
            child: ElevatedButton(
                onPressed: onPressed,
                style: TextButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 255, 255, 255),
                  primary: Colors.black,
                  elevation: 3,
                ),
                child: Text(
                  text,
                  style: TextStyle(
                  ),
                ),
              ),
          ),
      ),
      );
  }
}


