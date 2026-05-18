import 'package:flutter/material.dart';
import '../constants/countries.dart';
import '../models/country.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Variável que armazena o país selecionado
  late Country _selectedCountry;

  @override
  void initState() {
    super.initState();
    _selectedCountry = allCountries.first; // Começa com Brasil
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Explore Mundo'),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      drawer: _buildDrawer(context),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // 1. BANNER DINÂMICO (Muda ao clicar)
            Image.network(
              _selectedCountry.image,
              width: double.infinity,
              height: 240,
              fit: BoxFit.cover,
            ),

            // 2. SEÇÃO DE TÍTULO DINÂMICA
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _selectedCountry.name,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Text(
                          'Destino Selecionado',
                          style: TextStyle(
                            color: Colors.grey[500],
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Icon(Icons.star, color: Colors.red[500]),
                  const Text('41'),
                ],
              ),
            ),

            // 3. SEÇÃO DE BOTÕES
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildButtonColumn(Colors.deepPurple, Icons.call, 'LIGAR'),
                _buildButtonColumn(Colors.deepPurple, Icons.near_me, 'ROTA'),
                _buildButtonColumn(
                  Colors.deepPurple,
                  Icons.share,
                  'COMPARTILHAR',
                ),
              ],
            ),

            // 4. SEÇÃO DE TEXTO DINÂMICA
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Text(
                _selectedCountry.description,
                softWrap: true,
                textAlign: TextAlign.justify,
              ),
            ),

            // 5. LISTVIEW PARA SELEÇÃO
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Selecione um Destino',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: allCountries.length,
              itemBuilder: (context, index) {
                final country = allCountries[index];
                return Card(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 8,
                  ),
                  // Destaca o país selecionado
                  color: _selectedCountry.name == country.name
                      ? Colors.deepPurple.withOpacity(0.1)
                      : Colors.white,
                  child: ListTile(
                    leading: Text(
                      country.flag,
                      style: const TextStyle(fontSize: 24),
                    ),
                    title: Text(country.name),
                    subtitle: const Text('Clique para atualizar o banner'),
                    trailing: const Icon(Icons.touch_app),
                    onTap: () {
                      // AQUI ACONTECE A MÁGICA!
                      setState(() {
                        _selectedCountry = country;
                      });
                    },
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.deepPurple),
            child: Text(
              'Menu Explore Mundo',
              style: TextStyle(color: Colors.white, fontSize: 24),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () => Navigator.pop(context),
          ),
          const Divider(),
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
    );
  }
}
