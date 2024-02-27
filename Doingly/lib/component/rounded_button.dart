import 'package:flutter/material.dart';
import 'package:Doingly/constants.dart';

/// A custom rounded button widget.
///
/// This widget displays a rounded button with customizable text, color, and text color.
class RoundedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color color, textColor;

  /// Creates a rounded button.
  ///
  /// The [text] parameter is required and specifies the text to be displayed on the button.
  /// The [onPressed] parameter is required and specifies the callback function to be called when the button is pressed.
  /// The [color] parameter is optional and specifies the background color of the button. Defaults to [kPrimaryColor].
  /// The [textColor] parameter is optional and specifies the text color of the button. Defaults to [kPrimaryLightColor].
  const RoundedButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.color = kPrimaryColor,
    this.textColor = kPrimaryLightColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: size.width * 0.6,
      height: size.height * 0.05,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(40),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: const Color(0xffF4A18A),
            shape: const BeveledRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(2)),
            ),
          ),
          onPressed: onPressed,
          child: Text(text),
        ),
      ),
    );
  }
}
