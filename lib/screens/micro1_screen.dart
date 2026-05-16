import 'package:flutter/material.dart';

class Micro1Screen extends StatelessWidget {
  const Micro1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('M1: Hello World')),
      body: const Center(
        child: Text(
          'Olá, Mundo Flutter!',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
