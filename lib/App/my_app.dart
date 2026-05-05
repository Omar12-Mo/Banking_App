import 'package:banking_mobile_app/core/routes/app_routes.dart';
import 'package:banking_mobile_app/core/theme/app_theming.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    theme: getLightTheme(),
    initialRoute: Routes.initalRoute,
    onGenerateRoute: AppRoutes.generateRoute,
    );
  }
}

