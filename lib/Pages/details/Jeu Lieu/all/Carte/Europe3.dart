import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/details/Jeu%20Lieu/all/subscreens/mapscreen.dart';

import 'package:flutter_application_1/Pages/details/Jeu%20Lieu/vrai/Vrai/faux%20%20lieuEU/faux3.dart';
import 'dart:math';

import 'package:assets_audio_player/assets_audio_player.dart';

import 'package:flutter_application_1/Pages/details/Jeu%20Lieu/vrai/Vrai/faux%20%20lieuEU/vrai3.dart';
import 'package:flutter_application_1/Pages/details/Salon%20Mini%20jeu/Mini_jeu.dart';

void main() {
  runApp(Europe3Page());
}

class Europe3Page extends StatelessWidget {
  final AssetsAudioPlayer audioPlayer = AssetsAudioPlayer();

  final List<String> motsEurope = [
    "Albanie",
    "Allemagne",
    "Andorre",
    "Autriche",
    "Belgique",
    "Biélorussie",
    "Bosnie",
    "Bulgarie",
    "Chypre",
    "Croatie",
    "Danemark",
    "Espagne",
    "Estonie",
    "Finlande",
    "France",
    "Grèce",
    "Hongrie",
    "Irlande",
    "Islande",
    "Italie",
    "Kosovo",
    "Lettonie",
    "Liechtenstein",
    "Lituanie",
    "Luxembourg",
    "Macédoine",
    "Malte",
    "Moldavie",
    "Monaco",
    "Monténégro",
    "Norvège",
    "Pays-Bas",
    "Pologne",
    "Portugal",
    "Roumanie",
    "Royaume-Uni",
    "Russie",
    "Saint-Marin",
    "Serbie",
    "Slovaquie",
    "Slovénie",
    "Suède",
    "Suisse",
    "Tchéquie",
    "Ukraine",
    "Vatican"
  ];

  String vraiPays = "";
  String fauxPays = "";
  int indexreponse = Random().nextInt(4) + 1;

  Europe3Page({super.key}) {
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
    double valHauteurBouton = MediaQuery.of(context).size.height / 2 + 260;
    double valHauterBasBouton = MediaQuery.of(context).size.height / 2 + 300;
    double button1 = widthScreen / 2 + 20;
    double button2 = widthScreen / 2 + 20;
    double button3 = widthScreen / 2 + 20;
    double button4 = widthScreen / 2 + 20;

    var indexRandom = Random().nextInt(motsEurope.length - 4);

    // Si la position doit être inversée
    /* 
    if (!Random().nextBool()) {
      double temp = fauxButtonLeft;
      fauxButtonLeft = vraiButtonLeft;
      vraiButtonLeft = temp;
    } */

    // Vérifier si les boutons se chevauchent
    if ((vraiButtonLeft - fauxButtonLeft).abs() < 140) {
      fauxButtonLeft -= 140;
    }

    // Choisir aléatoirement un autre pays pour le premier nouveau bouton, en vérifiant qu'il est différent du vrai et du faux pays
    String autrePays1 = motsEurope[Random().nextInt(motsEurope.length)];
    while (autrePays1 == vraiPays || autrePays1 == fauxPays) {
      autrePays1 = motsEurope[Random().nextInt(motsEurope.length)];
    }
    // Choisir aléatoirement un autre pays pour le deuxième nouveau bouton, en vérifiant qu'il est différent du vrai, du faux pays et du premier nouveau bouton
    String autrePays2 = motsEurope[Random().nextInt(motsEurope.length)];
    while (autrePays2 == vraiPays ||
        autrePays2 == fauxPays ||
        autrePays2 == autrePays1) {
      autrePays2 = motsEurope[Random().nextInt(motsEurope.length)];
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
                audioPlayer.stop();
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
            left: widthScreen / 2 + 130,
            child: IconButton(
              icon: const Icon(Icons.volume_up, color: Colors.black),
              iconSize: 40,
              onPressed: () {
                audioPlayer.open(Audio('assets/${vraiPays}.mp3'));
              },
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
              'Difficile',
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
            top: valHauteurBouton,
            left: fauxButtonLeft,
            child: ElevatedButton(
              onPressed: () {
                audioPlayer.stop();
                if (indexreponse == 1) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Vrai3()),
                  );
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Faux3()),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 26, 126, 165),
                minimumSize: const Size(10, 30),
              ),
              child: Text(
                (indexreponse == 1) ? vraiPays : motsEurope[indexRandom + 1],
                style: TextStyle(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  fontSize: calculateFontSize(fauxPays),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Positioned(
            top: valHauteurBouton,
            left: vraiButtonLeft,
            child: ElevatedButton(
              onPressed: () {
                audioPlayer.stop();
                if (indexreponse == 2) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Vrai3()),
                  );
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Faux3()),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 26, 126, 165),
                minimumSize: const Size(10, 30),
              ),
              child: Text(
                (indexreponse == 2) ? vraiPays : motsEurope[indexRandom + 2],
                style: TextStyle(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  fontSize: calculateFontSize(vraiPays),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Positioned(
            top: valHauterBasBouton,
            left: fauxButtonLeft,
            child: ElevatedButton(
              onPressed: () {
                audioPlayer.stop();
                if (indexreponse == 3) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Vrai3()),
                  );
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Faux3()),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 26, 126, 165),
                minimumSize: const Size(10, 30),
              ),
              child: Text(
                (indexreponse == 3) ? vraiPays : motsEurope[indexRandom + 3],
                style: const TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Positioned(
            top: valHauterBasBouton,
            left: vraiButtonLeft,
            child: ElevatedButton(
              onPressed: () {
                audioPlayer.stop();
                if (indexreponse == 4) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Vrai3()),
                  );
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Faux3()),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 26, 126, 165),
                minimumSize: const Size(10, 30),
              ),
              child: Text(
                (indexreponse == 4) ? vraiPays : motsEurope[indexRandom],
                style: const TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 16,
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
              child: const Text('OK'),
            )
          ],
        );
      });
}

String _getInfoPays(String pays) {
  switch (pays) {
    case "Albanie":
      return "Capitale : Tirana\nPopulation : 2.8 millions";
    case "Allemagne":
      return "Capitale : Berlin\nPopulation : 83.2 millions";
    case "Andorre":
      return "\nPopulation : 77 072 habitants";
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
      return "\nPopulation : 39 500 habitants";
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
      return "\nPopulation : 33 931 habitants";
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
