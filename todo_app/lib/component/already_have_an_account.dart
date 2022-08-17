import 'package:flutter/material.dart';

class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool login;
  final  VoidCallback onPressed;
  const AlreadyHaveAnAccountCheck({
    Key? key, 
     this.login=true,
     required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget> [
        Text(
         login ? "Don't have an account ?": "Already have an account ?",
          style: const TextStyle(color: Color(0xffF4A18A))
          ),
           GestureDetector(
            onTap: onPressed,
            child: Text(
              login ?"Sign Up":"Sign In",
              style: const TextStyle(
                color: Color(0xffF4A18A),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
      ],
    );
  }
}

