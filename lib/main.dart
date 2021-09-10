import 'package:flutter/material.dart';
import 'package:section12_login/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: SafeArea(
            child: LoginScreen(),
          ),
        ),
      ),
    );
  }
}
