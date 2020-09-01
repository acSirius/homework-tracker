import 'package:flutter/material.dart';
import 'package:homework_tracker/exports.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomePage.id,
      routes: {
        WelcomePage.id: (context) => WelcomePage(),
        LoginPage.id: (context) => LoginPage(),
        RegisterPage.id: (context) => RegisterPage(),
        TasksPage.id: (context) => TasksPage(),
        InputTask.id: (context) => InputTask(),
      },
    );
  }
}
