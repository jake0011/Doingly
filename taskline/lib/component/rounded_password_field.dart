import 'package:flutter/material.dart';

import 'input_field_container.dart';

class RoundedPasswordField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  const RoundedPasswordField({
    Key? key, 
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TextfieldContainer(
      child: TextField(
        obscureText: true,
        decoration: InputDecoration(
          hintText: "Password",
        icon:Icon(Icons.lock,
        color: Colors.white,
        ),
        suffixIcon:
         Icon(Icons.visibility, 
         color: Colors.white,
        ),
        border: InputBorder.none,
        ),
      ),
        );
  }
}

