import '../models/plat.dart';

const List<String> categories = [
  'Menus',
  'Burgers',
  'Tenders',
  'Desserts',
  'Boissons',
];

const List<Plat> plats = [
  Plat(
    nom: 'Menu Crispy',
    description: 'Crispy Burger + frites + boisson 33cl au choix.',
    prix: 11.90,
    image: 'assets/images/menu_crispy.jpg',
    categorie: 'Menus',
  ),
  Plat(
    nom: 'Bucket Family',
    description: '20 wings + 10 tenders + 2 grandes frites.',
    prix: 34.90,
    image: 'assets/images/bucket.jpg',
    categorie: 'Menus',
  ),

  Plat(
    nom: 'Crispy Burger',
    description: 'Poulet pané croustillant, cheddar et sauce maison.',
    prix: 7.50,
    image: 'assets/images/crispy_burger.jpg',
    categorie: 'Burgers',
  ),
  Plat(
    nom: 'Spicy Burger',
    description: 'Poulet pané épicé, jalapeños et sauce piquante.',
    prix: 7.90,
    image: 'assets/images/spicy_burger.jpg',
    categorie: 'Burgers',
  ),

  Plat(
    nom: 'Tenders x5',
    description: 'Aiguillettes de poulet panées, servies avec une sauce.',
    prix: 6.90,
    image: 'assets/images/tenders.jpg',
    categorie: 'Tenders',
  ),
  Plat(
    nom: 'Wings x8',
    description: 'Ailes de poulet marinées, classiques ou épicées.',
    prix: 7.50,
    image: 'assets/images/wings.jpg',
    categorie: 'Tenders',
  ),

  Plat(
    nom: 'Cookie',
    description: 'Cookie moelleux aux pépites de chocolat.',
    prix: 2.50,
    image: 'assets/images/cookie.jpg',
    categorie: 'Desserts',
  ),
  Plat(
    nom: 'Sundae Caramel',
    description: 'Glace vanille nappée de caramel.',
    prix: 3.50,
    image: 'assets/images/sundae.jpg',
    categorie: 'Desserts',
  ),

  Plat(
    nom: 'Soda 33cl',
    description: 'Coca-Cola, Fanta, Sprite ou Ice Tea.',
    prix: 2.00,
    image: 'assets/images/soda.jpg',
    categorie: 'Boissons',
  )
];