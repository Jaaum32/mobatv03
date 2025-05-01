import 'dart:math';
import 'package:flutter/material.dart';
import '../onboarding/onboarding_screen.dart';

/// Tela de Splash Flutter animada, exibida após a splash nativa.
/// Aplica rotação e opacidade na logo antes de redirecionar para o onboarding.
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _rotation;
  late final Animation<double> _opacity;

  @override
  void initState() {
    super.initState();

    // Controlador de animação com duração de 3 segundos
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );

    // Animação de rotação completa (0 a 2*PI radianos)
    _rotation = Tween<double>(begin: 0, end: 2 * pi).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    // Animação de opacidade de 0 a 1
    _opacity = Tween<double>(begin: 0, end: 1).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    ));

    // Inicia a animação
    _controller.forward();

    // Após 3 segundos, navega para a tela de onboarding
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const OnboardingScreen()),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose(); // Libera os recursos do AnimationController
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Fundo branco, como definido na splash nativa
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          builder: (_, child) {
            return Opacity(
              opacity: _opacity.value,
              child: Transform.rotate(
                angle: _rotation.value,
                child: child,
              ),
            );
          },
          // Logo animada
          child: Image.asset(
            'assets/images/logo.PNG',
            width: 150,
          ),
        ),
      ),
    );
  }
}
