import 'package:flutter/material.dart';

class Micro2Screen extends StatelessWidget {
  const Micro2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('M2: Widgets Básicos'),
        backgroundColor: Colors.blueAccent,
      ),
      body: const Center(child: Text('Conteúdo da Microatividade 2')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
