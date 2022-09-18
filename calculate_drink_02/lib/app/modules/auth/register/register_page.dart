import 'package:calculate_drink_02/app/core/widget/calculate_drink_field.dart';
import 'package:flutter/material.dart';

import '../../../core/ui/theme_extensions.dart';
import '../../../core/widget/calculate_drink_logo.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Calculate Drink',
              style: TextStyle(fontSize: 10, color: context.primaryColor),
            ),
            Text(
              'Cadastro',
              style: TextStyle(fontSize: 15, color: context.primaryColor),
            )
          ],
        ),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: ClipOval(
            child: Container(
              color: context.primaryColor.withAlpha(20),
              padding: const EdgeInsets.all(8),
              child: Icon(
                Icons.arrow_back_ios_new_outlined,
                size: 20,
                color: context.primaryColor,
              ),
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.width * .5,
            // ignore: sort_child_properties_last
            child: const FittedBox(
              // ignore: sort_child_properties_last
              child: CalculateDrinkLogo(),
              fit: BoxFit.fitHeight,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 20,
            ),
            child: Form(
                child: Column(
              children: [
                CalculateDrinkField(label: 'E-mail'),
                const SizedBox(height: 20),
                CalculateDrinkField(label: 'Senha', obscureText: true),
                const SizedBox(height: 20),
                CalculateDrinkField(label: 'Confirma senha', obscureText: true),
                const SizedBox(height: 20),
                Align(
                  alignment: Alignment.bottomRight,
                  child: ElevatedButton(
                    // ignore: sort_child_properties_last
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20))),
                    child: const Padding(
                      padding: EdgeInsets.all(10),
                      child: Text('Salvar'),
                    ),
                  ),
                )
              ],
            )),
          )
        ],
      ),
    );
  }
}
