import 'package:flutter/material.dart';

import '../ui/calculate_drink_icons.dart';

class CalculateDrinkField extends StatelessWidget {
  final String label;
  final IconButton? suffixIconButton;
  final bool obscureText;
  final ValueNotifier<bool> obscureTextVN;
  final TextEditingController? controller;
  final FormFieldValidator<String>? validator;
  CalculateDrinkField({
    Key? key,
    required this.label,
    this.suffixIconButton,
    this.obscureText = false,
    this.controller,
    this.validator,
  })  : assert(obscureText == true ? suffixIconButton == null : true,
            'ObscureText não pode ser enviado em conjunto com suffixIconButton'),
        obscureTextVN = ValueNotifier(obscureText),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: obscureTextVN,
      builder: (_, obscureTexValue, child) {
        return TextFormField(
          decoration: InputDecoration(
              labelText: label,
              labelStyle: const TextStyle(fontSize: 15),
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
              errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                  borderSide: const BorderSide(color: Colors.red)),
              isDense: true,
              suffixIcon: suffixIconButton ??
                  (obscureText == true
                      ? IconButton(
                          icon: Icon(
                            !obscureTexValue
                                ? CalculateDrinkIcons.eye_slash
                                : CalculateDrinkIcons.eye,
                            size: 20,
                          ),
                          onPressed: () {
                            obscureTextVN.value = !obscureTexValue;
                          },
                        )
                      : null)),
          obscureText: obscureTexValue,
        );
      },
    );
  }
}
