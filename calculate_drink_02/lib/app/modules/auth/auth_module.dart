import 'package:provider/provider.dart';

import '../../core/modules/calculate_drink_module.dart';
import 'login/login_page.dart';
import 'login_controller.dart';
import 'register/register_page.dart';
import 'register_controller.dart';

class AuthModule extends CalculateDrinkModule {
  AuthModule()
      : super(
          bindings: [
            ChangeNotifierProvider(
                create: (context) =>
                    LoginController(userService: context.read())),
            ChangeNotifierProvider(
                create: (context) =>
                    RegisterController(userService: context.read()))
          ],
          routers: {
            '/login': (context) => const LoginPage(),
            '/register': (context) => const RegisterPage(),
          },
        );
}
