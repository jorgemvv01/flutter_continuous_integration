import 'package:flutter/material.dart';
import 'package:flutter_continuous_integration/screens/home_screen.dart';
import 'package:flutter_continuous_integration/screens/second_screen.dart';
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'home': (context) => const HomeScreen(),
        'second': (context) => const SecondScreen()
      },
      initialRoute: 'home',
    );
  }
}

