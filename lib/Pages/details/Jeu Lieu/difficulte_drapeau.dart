import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/details/Jeu%20Lieu/Parametre_Lieu.dart';
import 'package:flutter_application_1/Pages/details/Jeu%20Lieu/all/Carte/Europe1.dart';
import 'package:flutter_application_1/Pages/details/Jeu%20Lieu/all/Carte/Europe2.dart';
import 'package:flutter_application_1/Pages/details/Jeu%20Lieu/all/Carte/Europe3.dart';
import 'package:flutter_application_1/Pages/details/Jeu%20Lieu/all/Carte/Europe4.dart';
import 'package:flutter_application_1/Pages/details/Jeu%20Lieu/all/Drapeau/Drapeau1.dart';
import 'package:flutter_application_1/Pages/details/Jeu%20Lieu/all/Drapeau/Drapeau2.dart';
import 'package:flutter_application_1/Pages/details/Jeu%20Lieu/all/Drapeau/Drapeau3.dart';
import 'package:flutter_application_1/Pages/details/Jeu%20Lieu/all/Drapeau/Drapeau4.dart';
import 'package:flutter_application_1/Pages/details/Parametres/parametre1.dart';
import 'package:flutter_application_1/Pages/details/Profil/profil.dart';
import 'package:flutter_application_1/Pages/details/Salon%20Mini%20jeu/Mini_jeu.dart';

class DifficulteDrapeauPage extends StatelessWidget {
  DifficulteDrapeauPage({super.key});

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
      Positioned(
        top: MediaQuery.of(context).size.height / 2 - 160,
        left: MediaQuery.of(context).size.width / 2 - 185,
        child: Container(
          width: 370,
          height: 480,
          decoration: const BoxDecoration(
            color: Color.fromRGBO(0, 0, 0, 0.498),
          ),
        ),
      ),
      Positioned(
        top: MediaQuery.of(context).size.height / 2 - 200,
        left: MediaQuery.of(context).size.width / 2 - 45,
        child: const Text('Mini jeu',
            style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold)),
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
          icon: const Icon(Icons.star_outline, color: Colors.black),
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

      Positioned(
        top: MediaQuery.of(context).size.height / 2 - 160,
        right: MediaQuery.of(context).size.width / 2 - 45,
        child: Column(
          children: [
            Image.asset(
              'assets/drapeau.png',
              width: 90,
              height: 90,
            ),
          ],
        ),
      ),
      Positioned(
        top: MediaQuery.of(context).size.height / 2 - 50,
        left: MediaQuery.of(context).size.width / 2 - 165,
        height: 60,
        width: 140,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DrapeauPage()),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromRGBO(15, 182, 224, 1),
            minimumSize: const Size(10, 30),
          ),
          child: const Text(
            'Facile',
            style: TextStyle(
              color: Color.fromRGBO(200, 255, 0, 1),
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      Positioned(
        top: MediaQuery.of(context).size.height / 2 + 100,
        left: MediaQuery.of(context).size.width / 2 - 165,
        height: 60,
        width: 140,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Drapeau3Page()),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromRGBO(15, 182, 224, 1),
            minimumSize: const Size(10, 30),
          ),
          child: const Text(
            'Difficile',
            style: TextStyle(
              color: Color.fromRGBO(200, 255, 0, 1),
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      Positioned(
        top: MediaQuery.of(context).size.height / 2 - 50,
        right: MediaQuery.of(context).size.width / 2 - 165,
        height: 60,
        width: 140,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Drapeau2Page()),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromRGBO(15, 182, 224, 1),
            minimumSize: const Size(10, 30),
          ),
          child: const Text(
            'Moyen',
            style: TextStyle(
              color: Color.fromRGBO(200, 255, 0, 1),
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      Positioned(
        top: MediaQuery.of(context).size.height / 2 + 100,
        right: MediaQuery.of(context).size.width / 2 - 165,
        height: 60,
        width: 140,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Drapeau4Page()),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromRGBO(15, 182, 224, 1),
            minimumSize: const Size(10, 30),
          ),
          child: const Text(
            'Extreme',
            style: TextStyle(
              color: Color.fromRGBO(200, 255, 0, 1),
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),

      Positioned(
        top: MediaQuery.of(context).size.height / 2 + 250,
        right: MediaQuery.of(context).size.width / 2 - 50,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MiniJeuPages()),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 26, 126, 165),
            minimumSize: const Size(10, 30),
          ),
          child: const Text(
            'Retour',
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    ]));
  }
}
