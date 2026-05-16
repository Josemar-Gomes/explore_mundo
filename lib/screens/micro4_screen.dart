import 'package:flutter/material.dart';

class Micro4Screen extends StatelessWidget {
  const Micro4Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final items = List.generate(20, (i) => 'Destino ${i + 1}');

    return Scaffold(
      appBar: AppBar(title: const Text('M4: ListView')),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.location_on),
            title: Text(items[index]),
            subtitle: const Text('Clique para ver detalhes'),
            onTap: () {},
          );
        },
      ),
    );
  }
}
