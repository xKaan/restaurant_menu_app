class Plat {
  final String nom;
  final String description;
  final double prix;
  final String image; // chemin de l'image dans /assets/images
  final String categorie; // sert à filtrer les plats selon la catégorie choisie

  // constructeur const : les plats changent jamais
  const Plat({
    required this.nom,
    required this.description,
    required this.prix,
    required this.image,
    required this.categorie,
  });
}