import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialIcon extends StatelessWidget {
  final String iconSrc;
  final VoidCallback onPressed;
  const SocialIcon({
    Key? key, 
    required this.iconSrc,
     required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 8),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(
            // width: 1,
            color: Color(0xffF4A18A),
          ),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          iconSrc, 
        height: 20,
        width: 20,
        ),
      ),
    );
  }
}

