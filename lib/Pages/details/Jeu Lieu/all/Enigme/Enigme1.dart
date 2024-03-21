import 'dart:ui';

import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter_application_1/Pages/details/Salon%20Mini%20jeu/Mini_jeu.dart';

class EnigmePage1 extends StatefulWidget {
  const EnigmePage1({super.key});

  @override
  State<EnigmePage1> createState() => EnigmePage1State();
}

class EnigmePage1State extends State<EnigmePage1> {
 final List<Map<String, String>> motsEurope = [
    
{
  "Albanie": {
    "description": "Je suis le pays des aigles à deux têtes."
    "capitale": "Tirana"
  },
  "Allemagne": {
    "description": "Je suis le pays de la saucisse et de la bière.",
    "capitale": "Berlin"
  }}];
  "Andorre": {
    "description": "Je suis un petit État niché dans les Pyrénées.",
    "capitale": "Andorre-la-Vieille"
  },
  "Autriche": {
    "description": "Je suis le pays de la musique classique.",
    "capitale": "Vienne"
  },
  "Belgique": {
    "description": "Je suis le pays du chocolat et des frites.",
    "capitale": "Bruxelles"
  },
  "Biélorussie": {
    "description": "Je suis le pays des vastes forêts et des lacs.",
    "capitale": "Minsk"
  },
  "Bosnie": {
    "description": "Je suis le pays des montagnes et des rivières.",
    "capitale": "Sarajevo"
  },
  "Bulgarie": {
    "description": "Je suis le pays des roses et des danses folkloriques.",
    "capitale": "Sofia"
  },
  "Chypre": {
    "description": "Je suis une île ensoleillée de la Méditerranée.",
    "capitale": "Nicosie"
  },
  "Croatie": {
    "description": "Je suis le pays des mille îles de l'Adriatique.",
    "capitale": "Zagreb"
  },
  "Danemark": {
    "description": "Je suis le pays des contes de fées et des vélos.",
    "capitale": "Copenhague"
  },
  "Espagne": {
    "description": "Je suis le pays de la passion et du flamenco.",
    "capitale": "Madrid"
  },
  "Estonie": {
    "description": "Je suis le pays des forêts et des marais.",
    "capitale": "Tallinn"
  },
  "Finlande": {
    "description": "Je suis le pays des lacs et des aurores boréales.",
    "capitale": "Helsinki"
  },
  "France": {
    "description": "Je suis le pays de la mode et de la gastronomie.",
    "capitale": "Paris"
  },
  "Grèce": {
    "description": "Je suis le pays de la mythologie et des oliviers.",
    "capitale": "Athènes"
  },
  "Hongrie": {
    "description": "Je suis le pays des bains thermaux et des gâteaux.",
    "capitale": "Budapest"
  },
  "Irlande": {
    "description": "Je suis le pays de la Guinness et des leprechauns.",
    "capitale": "Dublin"
  },
  "Islande": {
    "description": "Je suis le pays du feu et de la glace.",
    "capitale": "Reykjavik"
  },
  "Italie": {
    "description": "Je suis le pays de l'art, de la pizza et des pâtes.",
    "capitale": "Rome"
  },
  "Kosovo": {
    "description": "Je suis le pays des montagnes majestueuses.",
    "capitale": "Pristina"
  },
  "Lettonie": {
    "description": "Je suis le pays des plages de sable blanc.",
    "capitale": "Riga"
  },
  "Liechtenstein": {
    "description": "Je suis le pays du petit mais du riche.",
    "capitale": "Vaduz"
  },
  "Lituanie": {
    "description": "Je suis le pays des dunes de sable et des forêts.",
    "capitale": "Vilnius"
  },
  "Luxembourg": {
    "description": "Je suis le pays des châteaux et des vins fins.",
    "capitale": "Luxembourg"
  },
  "Macédoine": {
    "description": "Je suis le pays de la culture et de l'histoire.",
    "capitale": "Skopje"
  },
  "Malte": {
    "description": "Je suis le pays de la Méditerranée et des temples anciens.",
    "capitale": "La Valette"
  },
  "Moldavie": {
    "description": "Je suis le pays des vignobles et des monastères.",
    "capitale": "Chisinau"
  },
  "Monaco": {
    "description": "Je suis le pays des voitures de sport et des casinos.",
    "capitale": "Monaco"
  },
  "Monténégro": {
    "description": "Je suis le pays des montagnes et des plages.",
    "capitale": "Podgorica"
  },
  "Norvège": {
    "description": "Je suis le pays des fjords et des aurores boréales.",
    "capitale": "Oslo"
  },
  "Pays-Bas": {
    "description": "Je suis le pays des moulins à vent et des tulipes.",
    "capitale": "Amsterdam"
  },
  "Pologne": {
    "description": "Je suis le pays des chevaliers et des pierogis.",
    "capitale": "Varsovie"
  },
  "Portugal": {
    "description": "Je suis le pays des explorateurs et des pasteis de nata.",
    "capitale": "Lisbonne"
  },
  "Roumanie": {
    "description": "Je suis le pays des châteaux et des légendes.",
    "capitale": "Bucarest"
  },
  "Royaume-Uni": {
    "description": "Je suis le pays de la royauté et du thé.",
    "capitale": "Londres"
  },
  "Russie": {
    "description": "Je suis le plus grand pays du monde, riche en histoire.",
    "capitale": "Moscou"
  },
  "Saint-Marin": {
    "description": "Je suis le pays de la micro taille et des grandes fortifications.",
    "capitale": "Saint-Marin"
  },
  "Serbie": {
    "description": "Je suis le pays des montagnes et des rivières.",
    "capitale": "Belgrade"
  },
    "Slovaquie": {
    "description": "Je suis le pays des châteaux et des montagnes.",
    "capitale": "Bratislava"
  },
  "Slovénie": {
    "description": "Je suis le pays des lacs et des grottes.",
    "capitale": "Ljubljana"
  },
  "Suède": {
    "description": "Je suis le pays des aurores boréales et des boulettes de viande.",
    "capitale": "Stockholm"
  },
  "Suisse": {
    "description": "Je suis le pays des montagnes enneigées et du chocolat.",
    "capitale": "Berne"
  },
  "Tchéquie": {
    "description": "Je suis le pays des châteaux de conte de fées et de la bière.",
    "capitale": "Prague"
  },
  "Ukraine": {
    "description": "Je suis le pays des vastes plaines et des églises orthodoxes.",
    "capitale": "Kiev"
  },
  "Vatican": {
    "description": "Je suis le pays le plus petit du monde, le centre de la religion catholique.",
    "capitale": "Vatican"
  }

  ];

  final List<String> mots = [];

  String motSelectionne = "";
  String vraiPays = "";
  String fauxPays = "";
  String fauxPopulation = "";
  String vraiPopulation = "";
  bool dataready = false;
/*
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
*/
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
      //   Initialise();
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
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/10.png'),
            fit: BoxFit.cover,
          ),
        ),
        width: widthScreen,
        height: heightScreen,
        child: Column(
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 3,
                sigmaY: 3,
              ),
              child: Container(
                color: Colors.transparent,
              ),
            ),
            SizedBox(
              height: heightScreen / 7,
            ),
            Container(
              height: heightScreen - 199,
              width: widthScreen - 50,
              color: const Color.fromRGBO(255, 255, 255, 0.6),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        IconButton(
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
                        SizedBox(width: widthScreen - 168),
                        GestureDetector(
                            child: const Icon(
                              Icons.lightbulb,
                              color: Color.fromARGB(255, 255, 209, 2),
                              size: 40,
                            ),
                            onTap: () {
                              afficherAlertDialog(context, vraiPays);
                            }),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'Lieu',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'Facile',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  const Text(
                    'Quel est ce pays?',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                   const Text(
                    'Quel est ce pays?',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
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
}
