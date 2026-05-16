import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/detail_screen.dart';
import 'screens/micro1_screen.dart';
import 'screens/micro2_screen.dart';
import 'screens/micro3_screen.dart';
import 'screens/micro4_screen.dart';

void main() {
  runApp(const ExploreMundoApp());
}

class ExploreMundoApp extends StatelessWidget {
  const ExploreMundoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Explore Mundo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.deepPurple, useMaterial3: true),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/detail': (context) => const DetailScreen(),
        '/micro1': (context) => const Micro1Screen(),
        '/micro2': (context) => const Micro2Screen(),
        '/micro3': (context) => const Micro3Screen(),
        '/micro4': (context) => const Micro4Screen(),
      },
    );
  }
}
