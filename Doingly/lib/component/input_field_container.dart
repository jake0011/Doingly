import 'package:flutter/material.dart';

class TextfieldContainer extends StatelessWidget {
  // The child widget that will be displayed inside the container.
  final Widget child;

  // The constructor for the TextfieldContainer widget.
  // It takes a required child widget and an optional key.
  const TextfieldContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  // The build method for the TextfieldContainer widget.
  // It returns a Container widget with a specified margin, padding, width, and decoration.
  // The child widget is passed as a parameter to the Container widget.
  @override
  Widget build(BuildContext context) {
    // Get the size of the screen.
    Size size = MediaQuery.of(context).size;

    // Calculate the margin for the container.
    // The margin is set to 8 pixels vertically.
    const EdgeInsets margin = EdgeInsets.symmetric(vertical: 8);

    // Calculate the padding for the container.
    // The padding is set to 20 pixels horizontally and 2 pixels vertically.
    const EdgeInsets padding = EdgeInsets.symmetric(horizontal: 20, vertical: 2);

    // Calculate the width of the container.
    // The width is set to 80% of the screen width.
    double width = size.width * 0.8;

    // Define the decoration for the container.
    // The color is set to a shade of pink (0xffF4A18A), and the border radius is set to 30 pixels.
    BoxDecoration decoration = BoxDecoration(
      color: const Color(0xffF4A18A),
      borderRadius: BorderRadius.circular(30),
    );

    // Return the Container widget with the specified margin, padding, width, and decoration.
    // The child widget is passed as a parameter to the Container widget.
    return Container(
      margin: margin,
      padding: padding,
      width: width,
      decoration: decoration,
      child: child,
    );
  }
}