import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AngoTV - Home')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/premium');
              },
              child: const Text('Modo Premium'),
            ),
            const SizedBox(height: 20),
            const Text(
              'Modo Grátis: anúncios ativos',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
