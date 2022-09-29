import 'package:flutter/material.dart';

class TextfieldContainer extends StatelessWidget {
  final Widget child;
  const TextfieldContainer({
    Key? key,
     required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // ignore: newline-before-return
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
      width: size.width*0.8,
      decoration: BoxDecoration(
        color: const Color(0xffF4A18A),
        borderRadius: BorderRadius.circular(30),
      ),
      child: child,
    );
  }
}

