
import 'package:flutter/material.dart';
import 'login_screen.dart';

class backbutton extends StatelessWidget {

  const backbutton({
    Key? key, required Null Function() onPressed, required String text,
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
       icon: const Icon(Icons.arrow_back_outlined),
       color: Colors.black,
       onPressed: () {
  //        Navigator.push(
  //   context,
  //   MaterialPageRoute(builder: (context) => const LoginScreen()),
  // );
       },
     ),
        // Icon(Icons.arrow_back_outlined),
        //  color: Colors.white,
        //     onPressed: () {},
        ],
        ),
    );
  }
}