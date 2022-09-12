import 'package:provider/provider.dart';

import '../../core/modules/calculate_drink_module.dart';
import 'login/login_page.dart';
import 'login_controller.dart';

class AuthModule extends CalculateDrinkModule {
  AuthModule()
      : super(
          bindings: [ChangeNotifierProvider(create: (_) => LoginController())],
          routers: {
            '/login': (context) => const LoginPage(),
          },
        );
}
