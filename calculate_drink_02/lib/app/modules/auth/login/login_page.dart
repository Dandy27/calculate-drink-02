import 'package:flutter/material.dart';

import '../../../core/widget/calculate_drink_logo.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                  minHeight: constraints.maxHeight,
                  minWidth: constraints.maxWidth),
              child: IntrinsicHeight(
                  child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 20,
                ),
                child: Form(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(height: 10),
                      const CalculateDrinkLogo(),
                      const SizedBox(height: 20),
                      TextFormField(),
                      const SizedBox(height: 20),
                      TextFormField(),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                              onPressed: () {},
                              child: const Text('Esqueceu a sua senha?')),
                          ElevatedButton(
                            // ignore: sort_child_properties_last
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                            child: const Padding(
                              padding: EdgeInsets.all(10),
                              child: Text('Login'),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              )),
            ),
          );
        },
      ),
    );
  }
}
