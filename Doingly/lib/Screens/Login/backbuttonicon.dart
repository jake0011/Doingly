import 'package:flutter/material.dart';

class BackButtonIcon extends StatelessWidget {
  const BackButtonIcon({
    Key? key,
    required Null Function() onPressed,
    required String text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 65,
      left: 10,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            icon: const Icon(Icons.arrow_back_outlined), // Icon for back button
            color: Colors.black, // Color of the icon
            onPressed: onPressed, // Function to be called when the button is pressed
          ),
        ],
      ),
    );
  }
}