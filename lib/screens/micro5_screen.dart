import 'package:flutter/material.dart';

class Micro5Screen extends StatefulWidget {
  const Micro5Screen({super.key});

  @override
  State<Micro5Screen> createState() => _Micro5ScreenState();
}

class _Micro5ScreenState extends State<Micro5Screen> {
  final List<String> _destinos = [
    'Brasil',
    'Japão',
    'França',
    'Itália',
    'Canadá',
  ];
  List<String> _filtrados = [];

  @override
  void initState() {
    super.initState();
    _filtrados = _destinos;
  }

  void _filtrar(String query) {
    setState(() {
      _filtrados = _destinos
          .where((d) => d.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('M5: Busca')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              onChanged: _filtrar,
              decoration: const InputDecoration(
                labelText: 'Pesquisar Destino',
                prefixIcon: Icon(Icons.search),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _filtrados.length,
                itemBuilder: (context, index) =>
                    ListTile(title: Text(_filtrados[index])),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
