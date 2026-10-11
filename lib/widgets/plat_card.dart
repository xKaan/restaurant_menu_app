import 'package:flutter/material.dart';

import '../models/plat.dart';

// card pour afficher tous les plats, réutilisable partout dans l'application
class PlatCard extends StatelessWidget {
  final Plat plat;

  const PlatCard({super.key, required this.plat});

  @override
  Widget build(BuildContext context) {
    // card du plat
    return Card(
      // padding pour espacer les cards
      child: Padding(
        padding: const EdgeInsets.all(8),
        // row : image a gauche et données à droite
        child: Row(
          children: [
            // taille fixe de l'image, et borderfit pour pas déformer l'image
            Image.asset(plat.image, width: 80, height: 80, fit: BoxFit.cover),
            // sizedbox espace entre l'image et le texte
            const SizedBox(width: 10),
            // expanded pour que le texte prenne toute la largeur restante de la card sans dépasser
            Expanded(
              // column pour afficher verticalement le reste des infos
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    plat.nom,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(plat.description, maxLines: 2),
                  Text('${plat.prix} €'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
