import 'package:flutter/material.dart';

/// A widget that displays a divider with the text "OR" in the middle.
///
/// This widget is typically used in the login screen to separate different login options.
/// It consists of a horizontal row with dividers on both sides of the "OR" text.
class OrDivider extends StatelessWidget {
  const OrDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.03),
      width: size.width * 0.7,
      child: Row(
        children: const <Widget>[
          _buildDivider(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "OR",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ),
          _buildDivider(),
        ],
      ),
    );
  }
}

/// A helper widget that builds a divider with custom styling.
class _buildDivider extends StatelessWidget {
  const _buildDivider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Divider(
        color: Color(0xffF4A18A),
        height: 1.5,
        thickness: 1,
      ),
    );
  }
}
