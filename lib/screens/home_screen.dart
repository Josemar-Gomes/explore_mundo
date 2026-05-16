import 'package:flutter/material.dart';
import '../constants/countries.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Explore Mundo'), centerTitle: true),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.deepPurple),
              child: Text(
                'Menu de Atividades',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              title: const Text('Microatividade 1'),
              onTap: () => Navigator.pushNamed(context, '/micro1'),
            ),
            ListTile(
              title: const Text('Microatividade 2'),
              onTap: () => Navigator.pushNamed(context, '/micro2'),
            ),
            ListTile(
              title: const Text('Microatividade 3'),
              onTap: () => Navigator.pushNamed(context, '/micro3'),
            ),
            ListTile(
              title: const Text('Microatividade 4'),
              onTap: () => Navigator.pushNamed(context, '/micro4'),
            ),
            ListTile(
              title: const Text('Microatividade 5'),
              onTap: () => Navigator.pushNamed(context, '/micro5'),
            ),
          ],
        ),
      ),
      body: ListView.builder(
        itemCount: allCountries.length,
        itemBuilder: (context, index) {
          final country = allCountries[index];
          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              leading: Text(country.flag, style: const TextStyle(fontSize: 30)),
              title: Text(country.name),
              subtitle: Text(
                country.description,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () =>
                  Navigator.pushNamed(context, '/detail', arguments: country),
            ),
          );
        },
      ),
    );
  }
}
