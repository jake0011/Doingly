import 'package:flutter/material.dart';
import 'input_field_container.dart';

/// A custom rounded input field widget.
///
/// This widget displays a rounded input field with an optional icon and a hint text.
/// It takes a [hintText] parameter to display the hint text, an [icon] parameter to display an icon,
/// a [controller] parameter to control the text field's text, and an [onChanged] parameter to handle
/// the text field's value changes.
class RoundedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final TextEditingController controller;
  final ValueChanged<String> onChanged;

  const RoundedInputField({
    Key? key,
    required this.hintText,
    this.icon = Icons.person,
    required this.onChanged,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextfieldContainer(
      child: TextField(
        controller: controller,
        onChanged: onChanged,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: Colors.white,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
