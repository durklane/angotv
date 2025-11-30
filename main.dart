import 'package:flutter/material.dart';

void main() {
  runApp(const AngoTV());
}

class AngoTV extends StatelessWidget {
  const AngoTV({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
          child: Text(
            "AngoTV - App em construção",
            style: TextStyle(color: Colors.white, fontSize: 22),
          ),
        ),
      ),
    );
  }
}
