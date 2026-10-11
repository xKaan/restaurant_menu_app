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
class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  // catégorie actuellement sélectionnée (la première au démarrage)
  String categorieSelectionnee = categories.first;

  @override
  Widget build(BuildContext context) {
    // on garde que les plats de la catégorie sélectionnée
    final platsFiltres =
    plats.where((plat) => plat.categorie == categorieSelectionnee).toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu du Crispy Chick'),
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
      ),
      // safearea : évite que le contenu passe sous l'encoche en mode paysage (les photos du menu)
      body: SafeArea(
        // column : la barre des catégories en haut, la liste des plats en dessous
        child: Column(
          children: [
            // row placé dans un SingleChildScrollView horizontal, pour pouvoir faire défiler les catégories si elles dépassent la largeur de l'écran
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(8),
              child: Row(
                // un bouton par catégorie
                children: categories.map((categorie) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 8),
                    // choicechip : étiquette cliquable qui montre si elle est sélectionnée
                    child: ChoiceChip(
                      label: Text(categorie),
                      selected: categorie == categorieSelectionnee,
                      onSelected: (_) {
                        // setState met à jour la catégorie et redessine l'écran ce qui relance le filtre des plats
                        setState(() {
                          categorieSelectionnee = categorie;
                        });
                      },
                    ),
                  );
                }).toList(),
              ),
            ),

            // Liste des plats, scroll vertical.
            Expanded(
              // ListView.builder construit que les cartes visibles à l'écran
              child: ListView.builder(
                itemCount: platsFiltres.length,
                itemBuilder: (context, index) => PlatCard(plat: platsFiltres[index]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
