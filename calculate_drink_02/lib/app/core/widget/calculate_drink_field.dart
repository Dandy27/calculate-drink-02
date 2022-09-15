import 'package:flutter/material.dart';

class CalculateDrinkField extends StatelessWidget {
  final String label;
  final bool obscureText;
  const CalculateDrinkField({
    Key? key,
    this.label = '',
    this.obscureText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(fontSize: 15),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: const BorderSide(color: Colors.red)),
          isDense: true),
      obscureText: obscureText,
    );
  }
}
