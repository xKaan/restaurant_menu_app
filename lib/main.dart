import 'package:flutter/material.dart';
import 'data/menu_data.dart';
import 'widgets/plat_card.dart';

void main() {
  runApp(const MyApp());
}

// Racine de l'app, thème et écran d'accueil
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crispy Chick',
      debugShowCheckedModeBanner: false, // retirer la bannière debug
      theme: ThemeData(
        colorSchemeSeed: Colors.deepOrange, // couleur principale de l'appli
        useMaterial3: true,
      ),
      home: const MenuPage(),
    );
  }
}

// Ecran du menu
// StatefulWidget car l'écran doit se souvenir de la catégorie sélectionnée et se redessiner quand elle change
class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu du Crispy Chick'),
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: plats.length,
        itemBuilder: (context, index) => PlatCard(plat: plats[index]),
      ),
    );
  }
}