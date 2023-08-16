import 'package:flutter/material.dart';
import 'package:flutter_application_1/presentation/screens/buttons/buttons_screen.dart';
import 'package:flutter_application_1/presentation/screens/cards/cards_screen.dart';
import 'package:flutter_application_1/presentation/screens/home/home_screen.dart';
import 'config/theme/app_theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme(selectedColor: 2).getTheme(),
      home: const HomeScreen(),
      routes: {
        '/buttons': (context) => const ButtonsScreen(),
        '/cards': (context) => const CardsScreen(),
      },
    );
  }
}
