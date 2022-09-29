// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import '../../Login/backbuttonicon.dart';
import '../../Login/login_screen.dart';

class Background extends StatelessWidget {
  final Widget child;
  // ignore: use_key_in_widget_constructors
  const Background({required this.child});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // ignore: newline-before-return
    return SizedBox(
      width: double.infinity,
      height: size.height,
      child: Stack(alignment: Alignment.center, children: <Widget>[
        Positioned(
          top: 0,
          left: 0,
          child: Image.asset(
            "assets/images/main_top.png",
            width: size.width * 0.4,
          ),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: Image.asset(
            "assets/images/main_bottom.png",
            width: size.width * 0.3,
          ),
        ),
        child,
      ]),
    );
  }
}
