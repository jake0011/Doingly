import 'package:flutter/material.dart';

import 'input_field_container.dart';

/// A custom text field for entering passwords with rounded corners.
class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final TextEditingController passController;

  /// Constructs a [RoundedPasswordField].
  ///
  /// The [onChanged] callback is called whenever the value of the password field changes.
  /// The [passController] is used to control the text entered in the password field.
  const RoundedPasswordField({
    Key? key,
    required this.onChanged,
    required this.passController,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextfieldContainer(
      child: TextField(
        controller: passController,
        obscureText: true,
        decoration: InputDecoration(
          hintText: "Password",
          icon: Icon(
            Icons.lock,
            color: Colors.white,
          ),
          suffixIcon: Icon(
            Icons.visibility,
            color: Colors.white,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
