import 'package:flutter/material.dart';

/// A widget that displays a text and a clickable button to toggle between "Sign Up" and "Sign In".
class AlreadyHaveAnAccountCheck extends StatelessWidget {
  final bool isLogin;
  final VoidCallback onPressed;

  /// Constructs an [AlreadyHaveAnAccountCheck] widget.
  ///
  /// The [isLogin] parameter determines whether the current state is for login or sign up.
  /// The [onPressed] parameter is a callback function that is called when the toggle button is pressed.
  const AlreadyHaveAnAccountCheck({
    Key? key,
    this.isLogin = true,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = const TextStyle(color: Color(0xffF4A18A));
    final toggleText = isLogin ? 'Sign Up' : 'Sign In';
    final toggleAction = isLogin ? 'Don\'t have an account?' : 'Already have an account?';

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          toggleAction,
          style: textStyle,
        ),
        GestureDetector(
          onTap: onPressed,
          child: Text(
            toggleText,
            style: textStyle.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}