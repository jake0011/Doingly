import 'package:flutter/material.dart';

class Ordivider extends StatelessWidget {
  const Ordivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     Size size = MediaQuery.of(context).size;
    return Container(
     margin:  EdgeInsets.symmetric(vertical: size.height*0.05),
      width: size.width*0.8,
      child: Row(
        children: const <Widget> [
          buildDivider(),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Text("OR",
                 style: TextStyle(fontWeight: FontWeight.w600,
                 color: Color(0xffF4A18A)
                )
                ),
              ),
              buildDivider(),
        ],
      ),
    );
  }
}

class buildDivider extends StatelessWidget {
  const buildDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Divider(
        color: Color(0xffF4A18A), 
        height: 1.5,
        thickness: 1,
        )
        );
  }
}
