import 'package:flutter/material.dart';

import '../ui/theme_extensions.dart';

class CalculateDrinkLogo extends StatelessWidget {
  const CalculateDrinkLogo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          'assets/logo_drink.png',
          height: 200,
        ),
        Text(
          'Calculate Drink',
          style:context.textTheme.headline6
        )
      ],
    );
  }
}
