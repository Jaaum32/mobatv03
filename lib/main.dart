import 'package:flutter/material.dart';
import 'screens/splash/splash_screen.dart';

/// Ponto de entrada da aplicação MyFinance.
void main() {
  runApp(const MyFinanceApp());
}

/// Widget raiz da aplicação, define tema e tela inicial.
class MyFinanceApp extends StatelessWidget {
  const MyFinanceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Remove o banner "debug" do topo
      title: 'LanguageBuddy',
      theme: ThemeData(
        primarySwatch: Colors.blue, // Define o tema primário da aplicação
      ),
      // Tela inicial definida como a SplashScreen animada em Flutter
      home: const SplashScreen(),
    );
  }
}
