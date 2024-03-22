import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/details/Jeu%20Lieu/all/subscreens/drapeauscreen.dart';
import 'package:flutter_application_1/Pages/details/Jeu%20Lieu/all/subscreens/mapscreen.dart';
import 'dart:math';

import 'package:flutter_application_1/Pages/details/Jeu%20Lieu/vrai/Vrai/faux%20%20LieuEU/faux.dart';
import 'package:flutter_application_1/Pages/details/Jeu%20Lieu/vrai/Vrai/faux%20%20LieuEU/vrai.dart';
import 'package:flutter_application_1/Pages/details/Jeu%20Lieu/vrai/Vrai/faux%20%20PopulationEU/faux.dart';
import 'package:flutter_application_1/Pages/details/Jeu%20Lieu/vrai/Vrai/faux%20%20PopulationEU/vrai.dart';
import 'package:flutter_application_1/Pages/details/Salon%20Mini%20jeu/Mini_jeu.dart';

class PopulationPage extends StatefulWidget {
  @override
  PopulationPageState createState() => PopulationPageState();
}

class PopulationPageState extends State<PopulationPage> {
  final List<Map<String, String>> motsEurope = [
    {"Albanie": "2,8 millions"},
    {"Allemagne": "83 millions"},
    {"Andorre": "77 000"},
    {"Autriche": "8,9 millions"},
    {"Belgique": "11,5 millions"},
    {"Biélorussie": "9,4 millions"},
    {"Bosnie": "3,3 millions"},
    {"Bulgarie": "6,9 millions"},
    {"Chypre": "1,2 million"},
    {"Croatie": "4 millions"},
    {"Danemark": "5,8 millions"},
    {"Espagne": "47 millions"},
    {"Estonie": "1,3 million"},
    {"Finlande": "5,5 millions"},
    {"France": "67 millions"},
    {"Grèce": "10,4 millions"},
    {"Hongrie": "9,7 millions"},
    {"Irlande": "4,9 millions"},
    {"Islande": "364 000"},
    {"Italie": "60 millions"},
    {"Kosovo": "1,8 million"},
    {"Lettonie": "1,9 million"},
    {"Liechtenstein": "38 000"},
    {"Lituanie": "2,7 millions"},
    {"Luxembourg": "626 000"},
    {"Macédoine": "2,1 millions"},
    {"Malte": "514 000"},
    {"Moldavie": "2,6 millions"},
    {"Monaco": "39 000"},
    {"Monténégro": "622 000"},
    {"Norvège": "5,4 millions"},
    {"Pays-Bas": "17,4 millions"},
    {"Pologne": "38 millions"},
    {"Portugal": "10,3 millions"},
    {"Roumanie": "19 millions"},
    {"Royaume-Uni": "68 millions"},
    {"Russie": "146 millions"},
    {"Saint-Marin": "34 000"},
    {"Serbie": "7 millions"},
    {"Slovaquie": "5,4 millions"},
    {"Slovénie": "2,1 millions"},
    {"Suède": "10,4 millions"},
    {"Suisse": "8,6 millions"},
    {"Tchéquie": "10,7 millions"},
    {"Ukraine": "41,9 millions"},
    {"Vatican": "800"},
  ];

  final List<String> mots = [];

  String motSelectionne = "";
  String vraiPays = "";
  String fauxPays = "";
  String fauxPopulation = "";
  String vraiPopulation = "";
  bool dataready = false;

  Initialise() {
    motsEurope.shuffle();
    int vraiIndex = Random().nextInt(motsEurope.length);

    int fauxIndex1 = Random().nextInt(motsEurope.length);

    int fauxIndex2;
    do {
      fauxIndex2 = Random().nextInt(motsEurope.length);
    } while (fauxIndex2 == vraiIndex || fauxIndex2 == fauxIndex1);

    int fauxIndex3;
    do {
      fauxIndex3 = Random().nextInt(motsEurope.length);
    } while (fauxIndex3 == vraiIndex || fauxIndex3 == fauxIndex1);

    setState(() {
      vraiPays = motsEurope[vraiIndex].keys.first;
      vraiPopulation = motsEurope[vraiIndex].values.first.toString();
      fauxPays = motsEurope[fauxIndex1].keys.first;
      fauxPopulation = motsEurope[fauxIndex1].values.first.toString();

      dataready = true;
    });
  }

  PopulationPage() {
    // Mélanger les pays
    motsEurope.shuffle();
    // mettre le random defini en haut puis prendre entry .
    int random = Random().nextInt(motsEurope.length);
    int random2 = Random().nextInt(motsEurope.length);
    // Choisir aléatoirement le vrai pays parmi la liste
    vraiPays = motsEurope[random].keys.first;
    vraiPopulation = motsEurope[random].values.first.toString();
    print(vraiPopulation);
    // Choisir aléatoirement un autre pays pour le faux bouton, en vérifiant qu'il est différent du vrai pays
    fauxPopulation = motsEurope[random2].values.first.toString();
    fauxPays = motsEurope[random2].keys.first;
    while (fauxPays == vraiPays) {
      fauxPays = motsEurope[Random().nextInt(motsEurope.length)].keys.first;
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
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Initialise();
    });
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
        body: (dataready)
            ? Stack(
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
                    top: heightScreen / 2 - 350,
                    left: widthScreen / 2 - 180,
                    child: Container(
                      height: heightScreen - 199,
                      width: widthScreen - 50,
                      color: const Color.fromRGBO(255, 255, 255, 0.6),
                    ),
                  ),
                  Positioned(
                    top: heightScreen / 2 - 350,
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
                    top: heightScreen / 2 - 350,
                    left: widthScreen / 2 + 140,
                    child: GestureDetector(
                        child: const Icon(
                          Icons.lightbulb,
                          color: Color.fromARGB(255, 255, 209, 2),
                          size: 40,
                        ),
                        onTap: () {
                          afficherAlertDialog(context, vraiPays);
                        }),
                  ),
                  Positioned(
                    top: heightScreen / 2 - 255,
                    left: widthScreen / 2 - 45,
                    child: const Text(
                      'Population',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Positioned(
                    top: heightScreen / 2 - 200,
                    left: widthScreen / 2 - 18,
                    child: const Text(
                      'Facile',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                  ),
                  Positioned(
                    top: heightScreen / 2 - 170,
                    left: widthScreen / 2 - 110,
                    child: const Text(
                      "Quel est le nombre d'habitant?",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                  DrapeauScreen(imageUrl: "assets/${vraiPays}.jpg"),
                  Positioned(
                    top: MediaQuery.of(context).size.height / 2 + 270,
                    left: fauxButtonLeft,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => FauxPOEU()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 26, 126, 165),
                        minimumSize: const Size(10, 30),
                      ),
                      child: Text(
                        fauxPopulation,
                        style: TextStyle(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          fontSize: calculateFontSize(fauxPopulation),
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
                          MaterialPageRoute(builder: (context) => VraiPOEU()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor:
                            const Color.fromARGB(255, 26, 126, 165),
                        minimumSize: const Size(10, 30),
                      ),
                      child: Text(
                        vraiPopulation,
                        style: TextStyle(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          fontSize: calculateFontSize(vraiPopulation),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            : Center(
                child: CircularProgressIndicator(),
              ));
  }
}

void afficherAlertDialog(BuildContext context, String Pays) {
  String content = _getInfoPays(Pays);
  showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
            title: Text(Pays),
            content: Text(content),
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
