import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  final Size size;
  final Widget child;

  const Background({
    Key? key,
    required this.size,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Get the size of the screen
    Size size = MediaQuery.of(context).size;

    return Container(
      height: size.height,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          // Positioned widget to place the top image at the top left corner
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              'assets/images/signup_top.png',
              width: size.width * 0.5,
            ),
          ),
          // Positioned widget to place the bottom image at the bottom left corner
          Positioned(
            bottom: 0,
            left: 0,
            child: Image.asset(
              "assets/images/main_bottom.png",
              width: size.width * 0.3,
            ),
          ),
          child,
        ],
      ),
    );
  }
}
