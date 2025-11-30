import 'package:flutter/material.dart';

class PremiumScreen extends StatelessWidget {
  const PremiumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AngoTV - Premium')),
      body: const Center(
        child: Text(
          'Bem-vindo ao Modo Premium!\nSem anúncios e conteúdos exclusivos',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
