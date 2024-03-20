import 'package:flutter/material.dart';

import 'package:flutter_application_1/Pages/details/Jeu%20Lieu/all/Population/Population1.dart';
import 'package:flutter_application_1/Pages/details/Jeu%20Lieu/all/Population/Population2.dart';
import 'package:flutter_application_1/Pages/details/Jeu%20Lieu/all/Population/Population3.dart';
import 'package:flutter_application_1/Pages/details/Jeu%20Lieu/all/Population/Population4.dart';

import 'package:flutter_application_1/Pages/details/Parametres/parametre1.dart';
import 'package:flutter_application_1/Pages/details/Profil/profil.dart';
import 'package:flutter_application_1/Pages/details/Salon%20Mini%20jeu/Mini_jeu.dart';

class DifficultePopulationPage extends StatelessWidget {
  DifficultePopulationPage({super.key});

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
        right: MediaQuery.of(context).size.width / 2 - 75,
        child: Column(
          children: [
            Image.asset(
              'assets/population.png',
              width: 150,
              height: 150,
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
              MaterialPageRoute(builder: (context) => PopulationPage()),
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
              MaterialPageRoute(builder: (context) => PopulationPage3()),
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
              MaterialPageRoute(builder: (context) => PopulationPage2()),
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
              MaterialPageRoute(builder: (context) => PopulationPage4()),
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
