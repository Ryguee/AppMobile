import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/details/Jeu%20Lieu/all/subscreens/mapscreen.dart';

import 'dart:math';
import 'package:flutter_application_1/Pages/details/Jeu%20Lieu/all/Drapeau/Drapeau1.dart';
import 'package:flutter_application_1/Pages/details/Jeu%20Lieu/vrai/faux/faux.dart';
import 'package:flutter_application_1/Pages/details/Jeu%20Lieu/vrai/faux/vrai.dart';
import 'package:flutter_application_1/Pages/details/Salon%20Mini%20jeu/Mini_jeu.dart';

void main() {
  runApp(PopulationPage2());
}

class PopulationPage2 extends StatelessWidget {
  final List<String> motsEurope = [
    "Albanie1",
    "Allemagne1",
    "Andorre1",
    "Autriche1",
    "Belgique1",
    "Biélorussie1",
    "Bosnie1",
    "Bulgarie1",
    "Chypre1",
    "Croatie1",
    "Danemark1",
    "Espagne1",
    "Estonie1",
    "Finlande1",
    "France1",
    "Grèce1",
    "Hongrie1",
    "Irlande1",
    "Islande1",
    "Italie1",
    "Kosovo1",
    "Lettonie1",
    "Liechtenstein1",
    "Lituanie1",
    "Luxembourg1",
    "Macédoine1",
    "Malte1",
    "Moldavie1",
    "Monaco1",
    "Monténégro1",
    "Norvège1",
    "Pays-Bas1",
    "Pologne1",
    "Portugal1",
    "Roumanie1",
    "Royaume-Uni1",
    "Russie1",
    "Saint-Marin1",
    "Serbie1",
    "Slovaquie1",
    "Slovénie1",
    "Suède1",
    "Suisse1",
    "Tchéquie1",
    "Ukraine1",
    "Vatican1"
  ];

  final List<String> mots = [];

  String motSelectionne = "";
  String vraiPays = "";
  String fauxPays = "";

  PopulationPage2() {
    // Mélanger les pays
    motsEurope.shuffle();
    // Choisir aléatoirement le vrai pays parmi la liste
    vraiPays = motsEurope[Random().nextInt(motsEurope.length)];
    // Choisir aléatoirement un autre pays pour le faux bouton, en vérifiant qu'il est différent du vrai pays
    fauxPays = motsEurope[Random().nextInt(motsEurope.length)];
    while (fauxPays == vraiPays) {
      fauxPays = motsEurope[Random().nextInt(motsEurope.length)];
    }
  }

  double calculateFontSize(String mot) {
    if (mot.length <= 5) {
      return 18.0;
    } else if (mot.length <= 10) {
      return 16.0;
    } else {
      return 14.0;
    }
  }

  @override
  Widget build(BuildContext context) {
    double heightScreen = MediaQuery.of(context).size.height;
    double widthScreen = MediaQuery.of(context).size.width;

    // Variables pour déterminer la position des boutons
    double fauxButtonLeft = widthScreen / 2 - 120;
    double vraiButtonLeft = widthScreen / 2 + 20;

    // Si la position doit être inversée
    if (!Random().nextBool()) {
      double temp = fauxButtonLeft;
      fauxButtonLeft = vraiButtonLeft;
      vraiButtonLeft = temp;
    }

    // Vérifier si les boutons se chevauchent
    if ((vraiButtonLeft - fauxButtonLeft).abs() < 140) {
      fauxButtonLeft -= 140;
    }

    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            'assets/10.png',
            width: widthScreen,
            height: heightScreen,
            fit: BoxFit.cover,
          ),
          BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 3,
              sigmaY: 3,
            ),
            child: Container(
              color: Colors.transparent,
            ),
          ),
          Positioned(
            top: heightScreen / 2 - 250,
            left: widthScreen / 2 - 180,
            child: Container(
              height: heightScreen - 199,
              width: widthScreen - 50,
              color: const Color.fromRGBO(255, 255, 255, 0.6),
            ),
          ),
          Positioned(
            top: heightScreen / 2 - 250,
            right: widthScreen / 2 + 130,
            child: IconButton(
              icon: const Icon(Icons.home, color: Colors.black),
              iconSize: 40,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const MiniJeuPages(),
                  ),
                );
              },
            ),
          ),
          Positioned(
            top: heightScreen / 2 - 250,
            right: widthScreen / 2 + 90,
            child: IconButton(
              icon: const Icon(Icons.lightbulb, color: Colors.yellow),
              iconSize: 40,
              onPressed: () {
                afficherAlertDialog(
                  context,
                  "Indice",
                  _getInfoPays(vraiPays),
                );
              },
            ),
          ),
          Positioned(
            top: heightScreen / 2 - 240,
            left: widthScreen / 2 + 140,
            child: const Icon(
              Icons.star_rate_outlined,
              color: Color.fromARGB(255, 255, 209, 2),
              size: 40,
            ),
          ),
          Positioned(
            top: heightScreen / 2 - 185,
            left: widthScreen / 2 - 20,
            child: const Text(
              'Lieu',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          Positioned(
            top: heightScreen / 2 - 150,
            left: widthScreen / 2 - 18,
            child: const Text(
              'Facile',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
          Positioned(
            top: heightScreen / 2 - 100,
            left: widthScreen / 2 - 110,
            child: const Text(
              'Quel est le pays en rouge?',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          MapScreen(imageUrl: "assets/${vraiPays}.png"),
          Positioned(
            top: MediaQuery.of(context).size.height / 2 + 270,
            left: fauxButtonLeft,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Faux()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 26, 126, 165),
                minimumSize: const Size(10, 30),
              ),
              child: Text(
                fauxPays,
                style: TextStyle(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  fontSize: calculateFontSize(fauxPays),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2 + 270,
            left: vraiButtonLeft,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Vrai()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 26, 126, 165),
                minimumSize: const Size(10, 30),
              ),
              child: Text(
                vraiPays,
                style: TextStyle(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  fontSize: calculateFontSize(vraiPays),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void afficherAlertDialog(BuildContext context, String titre, String message) {
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
            title: Text(titre),
            content: Text(message),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('OK'),
              )
            ]);
      });
}

String _getInfoPays(String pays) {
  switch (pays) {
    case "Albanie":
      return "Capitale : Tirana\nPopulation : 2.8 millions";
    case "Allemagne":
      return "Capitale : Berlin\nPopulation : 83.2 millions";
    case "Andorre":
      return "Capitale : Andorre-la-Vieille\nPopulation : 77 072 habitants";
    case "Autriche":
      return "Capitale : Vienne\nPopulation : 8.9 millions";
    case "Belgique":
      return "Capitale : Bruxelles\nPopulation : 11.4 millions";
    case "Biélorussie":
      return "Capitale : Minsk\nPopulation : 9.4 millions";
    case "Bosnie-Herzégovine":
      return "Capitale : Sarajevo\nPopulation : 3.3 millions";
    case "Bulgarie":
      return "Capitale : Sofia\nPopulation : 7 millions";
    case "Chypre":
      return "Capitale : Nicosie\nPopulation : 1.2 millions";
    case "Croatie":
      return "Capitale : Zagreb\nPopulation : 4.1 millions";
    case "Danemark":
      return "Capitale : Copenhague\nPopulation : 5.8 millions";
    case "Espagne":
      return "Capitale : Madrid\nPopulation : 47.3 millions";
    case "Estonie":
      return "Capitale : Tallinn\nPopulation : 1.3 millions";
    case "Finlande":
      return "Capitale : Helsinki\nPopulation : 5.5 millions";
    case "France":
      return "Capitale : Paris\nPopulation : 68 millions";
    case "Grèce":
      return "Capitale : Athènes\nPopulation : 10.4 millions";
    case "Hongrie":
      return "Capitale : Budapest\nPopulation : 9.6 millions";
    case "Irlande":
      return "Capitale : Dublin\nPopulation : 4.9 millions";
    case "Islande":
      return "Capitale : Reykjavik\nPopulation : 364 260 habitants";
    case "Italie":
      return "Capitale : Rome\nPopulation : 60.3 millions";
    case "Kosovo":
      return "Capitale : Pristina\nPopulation : 1.8 millions";
    case "Lettonie":
      return "Capitale : Riga\nPopulation : 1.9 millions";
    case "Liechtenstein":
      return "Capitale : Vaduz\nPopulation : 38 547 habitants";
    case "Lituanie":
      return "Capitale : Vilnius\nPopulation : 2.8 millions";
    case "Luxembourg":
      return "Capitale : Luxembourg\nPopulation : 0.6 millions";
    case "Macédoine du Nord":
      return "Capitale : Skopje\nPopulation : 2 millions";
    case "Malte":
      return "Capitale : La Valette\nPopulation : 0.5 millions";
    case "Moldavie":
      return "Capitale : Chisinau\nPopulation : 4.4 millions";
    case "Monaco":
      return "Capitale : Monaco\nPopulation : 39 500 habitants";
    case "Monténégro":
      return "Capitale : Podgorica\nPopulation : 0.6 millions";
    case "Norvège":
      return "Capitale : Oslo\nPopulation : 5.4 millions";
    case "Pays-Bas":
      return "Capitale : Amsterdam\nPopulation : 17.4 millions";
    case "Pologne":
      return "Capitale : Varsovie\nPopulation : 38.6 millions";
    case "Portugal":
      return "Capitale : Lisbonne\nPopulation : 10.3 millions";
    case "Roumanie":
      return "Capitale : Bucarest\nPopulation : 19.1 millions";
    case "Royaume-Uni":
      return "Capitale : Londres\nPopulation : 67.1 millions";
    case "Russie":
      return "Capitale : Moscou\nPopulation : 144.5 millions";
    case "Saint-Marin":
      return "Capitale : Saint-Marin\nPopulation : 33 931 habitants";
    case "Serbie":
      return "Capitale : Belgrade\nPopulation : 6.9 millions";
    case "Slovaquie":
      return "Capitale : Bratislava\nPopulation : 5.5 millions";
    case "Slovénie":
      return "Capitale : Ljubljana\nPopulation : 2 millions";
    case "Suède":
      return "Capitale : Stockholm\nPopulation : 10.5 millions";
    case "Suisse":
      return "Capitale : Berne\nPopulation : 8.6 millions";
    case "Tchéquie":
      return "Capitale : Prague\nPopulation : 10.7 millions";
    case "Ukraine":
      return "Capitale : Kiev\nPopulation : 41.8 millions";
    case "Vatican":
      return "Capitale : Vatican\nPopulation : 800 habitants";
    default:
      return "";
  }
}
