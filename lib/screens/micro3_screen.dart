import 'package:flutter/material.dart';

class Micro3Screen extends StatelessWidget {
  const Micro3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('M3: Layouts')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.flight, size: 50, color: Colors.blue),
              Icon(Icons.hotel, size: 50, color: Colors.green),
              Icon(Icons.map, size: 50, color: Colors.orange),
            ],
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Voltar'),
          ),
        ],
      ),
    );
  }
}
