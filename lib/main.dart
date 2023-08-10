import 'package:flutter/material.dart';
import 'package:practicing/Pages/login_page.dart';

void main() {
  runApp(myApp());
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Rubik',
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color.fromARGB(255, 107, 112, 119),
      ),
      home: LoginPage(),
    );
  }
}
