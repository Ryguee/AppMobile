import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/details/Connexion/connexion.dart';
import 'package:flutter_application_1/Pages/details/Jeu%20Lieu/all/Drapeau/Drapeau1.dart';
import 'package:flutter_application_1/Pages/details/Jeu%20Lieu/difficulte_lieu.dart';
import 'package:flutter_application_1/Pages/details/Parametres/parametre1.dart';
import 'package:flutter_application_1/Pages/details/Profil/profil.dart';

class MiniJeuPages extends StatelessWidget {
  const MiniJeuPages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: <Widget>[
      // Fond d'écran avec la première image à partir du dossier 'assets'
      Image.asset(
        'assets/7.jpg',
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        fit: BoxFit.cover,
      ),

      // Conteneur avec fond semi-transparent
      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 0.5),
        ),
      ),

      // Icône de paramètres en haut à droite
      Positioned(
        top: MediaQuery.of(context).size.height / 2 - 375,
        left: MediaQuery.of(context).size.width / 2 + 150,
        child: IconButton(
          icon: const Icon(Icons.settings, color: Colors.black),
          iconSize: 40,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Parametre1Pages()),
            );
          },
        ),
      ),

      // Icône de profil en haut à gauche
      Positioned(
        top: MediaQuery.of(context).size.height / 2 - 375,
        right: MediaQuery.of(context).size.width / 2 + 150,
        child: IconButton(
          icon: const Icon(Icons.person, color: Colors.black),
          iconSize: 40,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const ProfilPage()),
            );
          },
        ),
      ),

      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              const SizedBox(
                width: 90,
              ),
              Image.asset(
                'assets/8.png',
                width: 250,
                height: 250,
              ),
            ],
          ),
        ],
      ),
      const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Image à positionner en haut
          SizedBox(
            height: 200,
          ),

          Center(
            child: Text(
              "Mini Jeu",
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
      Positioned(
        top: MediaQuery.of(context).size.height / 2 + 30,
        left: MediaQuery.of(context).size.width / 2 - 115,
        child: Text(
          'Lieu',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Positioned(
        top: MediaQuery.of(context).size.height / 2 - 120,
        left: MediaQuery.of(context).size.width / 2 - 185,
        width: 175,
        height: 175,
        child: MonBoutonAsset(
          imagePath: 'assets/terre.png',
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DifficulteLieuPage()),
            );
          },
        ),
      ),
      Positioned(
        top: MediaQuery.of(context).size.height / 2 + 30,
        right: MediaQuery.of(context).size.width / 2 - 135,
        child: Text(
          'Drapeau',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Positioned(
          top: MediaQuery.of(context).size.height / 2 - 110,
          right: MediaQuery.of(context).size.width / 2 - 160,
          width: 110,
          height: 125,
          child: MonBoutonAsset(
              imagePath: 'assets/drapeau.png',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DrapeauPage()),
                );
              })),
      Positioned(
        top: MediaQuery.of(context).size.height / 2 + 260,
        left: MediaQuery.of(context).size.width / 2 - 135,
        child: Text(
          'Population',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Positioned(
        top: MediaQuery.of(context).size.height / 2 + 150,
        left: MediaQuery.of(context).size.width / 2 - 220,
        width: 250,
        height: 200,
        child: GestureDetector(
            child: Image.asset(
              'assets/population.png',
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ConnexionPage()),
              );
            }),
      ),
      /*MonBoutonAsset(
              imagePath: 'assets/population.png',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ConnexionPage()),
                );
              })), */
      Positioned(
        top: MediaQuery.of(context).size.height / 2 + 260,
        right: MediaQuery.of(context).size.width / 2 - 130,
        child: Text(
          'Enigme',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Positioned(
          top: MediaQuery.of(context).size.height / 2 + 100,
          right: MediaQuery.of(context).size.width / 2 - 150,
          width: 120,
          height: 120,
          child: MonBoutonAsset(
              imagePath: 'assets/enigme.png',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ConnexionPage()),
                );
              })),
    ]));
  }
}

class MonBoutonAsset extends StatelessWidget {
  final String imagePath;
  final VoidCallback onPressed;

  const MonBoutonAsset({
    Key? key,
    required this.imagePath,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        children: [
          Image.asset(
            imagePath,
            width: 175,
            height: 175,
          ),
        ],
      ),
    );
  }
}
