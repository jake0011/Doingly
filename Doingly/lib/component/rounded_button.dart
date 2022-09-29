import 'package:flutter/material.dart';
import 'package:Doingly/constants.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color, textColor;
  const RoundedButton( {
    Key? key, required this.text,
     required this.onPressed, 
      this.color=kPrimaryColor, 
      this.textColor=kPrimaryLightColor,
  }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery
        .of(context)
        .size;
    // ignore: newline-before-return
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: size.width*0.6,
      height: size.height*0.05,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: ElevatedButton(
              style: ElevatedButton.styleFrom(
        
            foregroundColor: Colors.white,
            backgroundColor: const Color(0xffF4A18A),
        
            shape: const BeveledRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(2))),
        
          ),
      
          onPressed: onPressed,

          child: Text(text),
          ),
      ),
    );
  }
}

