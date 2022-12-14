import 'package:flutter/material.dart';

import 'core/database/migrations/sqlite_adm_connection.dart';
import 'core/ui/calculate_drink_ui_config.dart';
import 'modules/auth/auth_module.dart';
import 'modules/splash/splash_page.dart';

class AppWidget extends StatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  State<AppWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends State<AppWidget> {
  final sqliteAdmConnection = SqliteAdmConnection();
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(sqliteAdmConnection);
  }

  @override
  void dispose() {
    super.dispose();
    WidgetsBinding.instance.removeObserver(sqliteAdmConnection);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculate Drink Provider',
      initialRoute: '/login',
      theme: CalculateDrinkUiConfig.theme,
      routes: {...AuthModule().routers},
      home: const SplashPage(),
    );
  }
}
