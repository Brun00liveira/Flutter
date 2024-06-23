import 'package:flutter/material.dart';
import 'package:greengrocer/app_controller.dart';

import 'package:greengrocer/home.dart';
import 'package:greengrocer/login_page.dart';

class AppWidgets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: AppController.instance,
        builder: (context, child) {
          return MaterialApp(
            theme: ThemeData(
                primarySwatch: Colors.red,
                brightness: AppController.instance.isDarkTheme
                    ? Brightness.dark
                    : Brightness.light),
            home: LoginPage(),
          );
        });
  }
}
