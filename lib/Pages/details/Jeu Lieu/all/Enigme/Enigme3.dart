import 'dart:ui';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:audioplayers/audioplayers.dart';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/details/Jeu%20Lieu/all/Models/enigme.dart';
import 'package:flutter_application_1/Pages/details/Jeu%20Lieu/vrai/Vrai/Faux%20EnigmeEU/faux2.dart';
import 'package:flutter_application_1/Pages/details/Jeu%20Lieu/vrai/Vrai/Faux%20EnigmeEU/vrai2.dart';

import 'package:assets_audio_player/assets_audio_player.dart';

import 'dart:math';

import 'package:flutter_application_1/Pages/details/Salon%20Mini%20jeu/Mini_jeu.dart';

class EnigmePage3 extends StatefulWidget {
  const EnigmePage3({super.key});

  @override
  State<EnigmePage3> createState() => EnigmePage3State();
}

class EnigmePage3State extends State<EnigmePage3> {
  final AssetsAudioPlayer audioPlayer = AssetsAudioPlayer();

  List<Enigme> enigmes = [
    Enigme("Albanie", "Tirana",
        "Ma capitale est Tirana, mais mes montagnes touchent le ciel. Qui suis-je?"),
    Enigme("Albanie", "Tirana",
        "Ma capitale est Tirana, mais mes montagnes touchent le ciel. Qui suis-je?"),
    Enigme("Allemagne", "Berlin",
        "Ma capitale est Berlin, où l'ingéniosité rencontre l'histoire. Qui suis-je?"),
    Enigme("Andorre", "Andorre-la-Vieille",
        "Ma capitale est Andorre-la-Vieille, entre deux géants où les sommets atteignent les étoiles. Qui suis-je?"),
    Enigme("Autriche", "Vienne",
        "Ma capitale est Vienne, patrie de la musique classique où les vallées résonnent de mélodies. Qui suis-je?"),
    Enigme("Belgique", "Bruxelles",
        "Ma capitale est Bruxelles, connue pour mes chocolats et mes frites, mais aussi pour mon riche passé artistique. Qui suis-je?"),
    Enigme("Biélorussie", "Minsk",
        "Ma capitale est Minsk, le pays des vastes plaines où les forêts murmurent des secrets anciens. Qui suis-je?"),
    Enigme("Bosnie", "Sarajevo",
        "Ma capitale est Sarajevo, une terre de diversité où l'Orient et l'Occident se rencontrent. Qui suis-je?"),
    Enigme("Bulgarie", "Sofia",
        "Ma capitale est Sofia, la patrie des roses et des ruines antiques, où le passé se mêle au présent. Qui suis-je?"),
    Enigme("Chypre", "Nicosie",
        "Ma capitale est Nicosie, une île de légendes où la mer azuréenne caresse les plages dorées. Qui suis-je?"),
    Enigme("Croatie", "Zagreb",
        "Ma capitale est Zagreb, sur la côte adriatique où les vestiges romains côtoient les eaux cristallines. Qui suis-je?"),
    Enigme("Danemark", "Copenhague",
        "Ma capitale est Copenhague, le pays des contes de fées et des vélos, où la tradition rencontre la modernité. Qui suis-je?"),
    Enigme("Espagne", "Madrid",
        "Ma capitale est Madrid, la terre du flamenco et de la paella, où le soleil brille sur des siècles d'histoire. Qui suis-je?"),
    Enigme("Estonie", "Tallinn",
        "Ma capitale est Tallinn, le pays des forêts et des lacs, où la technologie se marie à la nature. Qui suis-je?"),
    Enigme("Finlande", "Helsinki",
        "Ma capitale est Helsinki, le pays des aurores boréales et des saunas, où le silence parle plus fort que les mots. Qui suis-je?"),
    Enigme("France", "Paris",
        "Ma capitale est Paris, le pays de l'amour et de la gastronomie, où l'art et la culture fleurissent à chaque coin de rue. Qui suis-je?"),
    Enigme("Grèce", "Athènes",
        "Ma capitale est Athènes, la terre des dieux et des héros, où les ruines antiques témoignent de ma grandeur passée. Qui suis-je?"),
    Enigme("Hongrie", "Budapest",
        "Ma capitale est Budapest, la patrie des bains thermaux et des goulash, où l'hospitalité est une tradition. Qui suis-je?"),
    Enigme("Irlande", "Dublin",
        "Ma capitale est Dublin, l'île de la verdure et des légendes, où les pubs résonnent de musique et de rires. Qui suis-je?"),
    Enigme("Islande", "Reykjavik",
        "Ma capitale est Reykjavik, le pays du feu et de la glace, où les volcans grondent sous les glaciers immenses. Qui suis-je?"),
    Enigme("Italie", "Rome",
        "Ma capitale est Rome, la patrie de la Renaissance et de la dolce vita, où chaque ville est un trésor d'art et d'histoire. Qui suis-je?"),
    Enigme("Kosovo", "Pristina",
        "Ma capitale est Pristina, une terre de montagnes et de traditions, où la résilience est une vertu. Qui suis-je?"),
    Enigme("Lettonie", "Riga",
        "Ma capitale est Riga, le pays des plages de sable blanc et des forêts luxuriantes, où la nature règne en maître. Qui suis-je?"),
    Enigme("Liechtenstein", "Vaduz",
        "Ma capitale est Vaduz, le petit État niché dans les Alpes, où la tranquillité est une richesse. Qui suis-je?"),
    Enigme("Lituanie", "Vilnius",
        "Ma capitale est Vilnius, la terre des dunes de sable et des châteaux médiévaux, où le passé et le présent se rencontrent. Qui suis-je?"),
    Enigme("Luxembourg", "Luxembourg",
        "Ma capitale est Luxembourg, un petit pays cosmopolite au cœur de l'Europe, où la prospérité est de mise. Qui suis-je?"),
    Enigme("Macédoine", "Skopje",
        "Ma capitale est Skopje, le pays des lacs et des montagnes, où la diversité culturelle est une richesse. Qui suis-je?"),
    Enigme("Malte", "La Valette",
        "Ma capitale est La Valette, un archipel ensoleillé au milieu de la Méditerranée, où les vestiges des civilisations anciennes parsèment mon paysage. Qui suis-je?"),
    Enigme("Moldavie", "Chișinău",
        "Ma capitale est Chișinău, le pays des vignobles et des monastères, où le vin coule comme une rivière. Qui suis-je?"),
    Enigme("Monaco", "Monaco",
        "Ma capitale est Monaco, le petit État glamour au bord de la mer, où le luxe est roi. Qui suis-je?"),
    Enigme("Monténégro", "Podgorica",
        "Ma capitale est Podgorica, le pays des fjords méditerranéens et des montagnes escarpées, où l'aventure vous attend à chaque tournant. Qui suis-je?"),
    Enigme("Norvège", "Oslo",
        "Ma capitale est Oslo, le pays des aurores boréales et des fjords majestueux, où la nature règne en souveraine. Qui suis-je?"),
    Enigme("Pays-Bas", "Amsterdam",
        "Ma capitale est Amsterdam, le pays des moulins à vent et des champs de tulipes, où l'eau est ma meilleure amie. Qui suis-je?"),
    Enigme("Pologne", "Varsovie",
        "Ma capitale est Varsovie, la terre des châteaux médiévaux et des forêts mystérieuses, où l'histoire est gravée dans la pierre. Qui suis-je?"),
    Enigme("Portugal", "Lisbonne",
        "Ma capitale est Lisbonne, le pays du fado et des plages dorées, où le soleil brille presque toute l'année. Qui suis-je?"),
    Enigme("Roumanie", "Bucarest",
        "Ma capitale est Bucarest, le pays des légendes et des châteaux hantés, où le mystère flotte dans l'air. Qui suis-je?"),
    Enigme("Royaume-Uni", "Londres",
        "Ma capitale est Londres, le pays de la royauté et du thé, où les contrastes sont aussi divers que mes paysages. Qui suis-je?"),
    Enigme("Russie", "Moscou",
        "Ma capitale est Moscou, le plus vaste pays du monde, où l'histoire est aussi grande que mes étendues. Qui suis-je?"),
    Enigme("Saint-Marin", "Saint-Marin",
        "Ma capitale est Saint-Marin, le plus ancien État souverain du monde, niché au cœur de l'Italie. Qui suis-je?"),
    Enigme("Serbie", "Belgrade",
        "Ma capitale est Belgrade, le pays des monastères et des vallées verdoyantes, où l'hospitalité est sacrée. Qui suis-je?"),
    Enigme("Slovaquie", "Bratislava",
        "Ma capitale est Bratislava, le pays des châteaux médiévaux et des montagnes imposantes, où l'aventure vous appelle. Qui suis-je?"),
    Enigme("Slovénie", "Ljubljana",
        "Ma capitale est Ljubljana, le pays des grottes mystérieuses et des lacs cristallins, où la nature est un trésor à préserver. Qui suis-je?"),
    Enigme("Suède", "Stockholm",
        "Ma capitale est Stockholm, le pays des forêts verdoyantes et des lacs scintillants, où la simplicité rencontre l'élégance. Qui suis-je?"),
    Enigme("Suisse", "Berne",
        "Ma capitale est Berne, le pays des montagnes enneigées et des vallées verdoyantes, où la précision est une vertu. Qui suis-je?"),
    Enigme("Tchéquie", "Prague",
        "Ma capitale est Prague, le joyau de l'Europe centrale, où les ruelles pavées racontent des siècles d'histoire. Qui suis-je?"),
    Enigme("Ukraine", "Kiev",
        "Ma capitale est Kiev, le pays des églises dorées et des vastes étendues, où l'âme slave résonne dans chaque mélodie. Qui suis-je?"),
    Enigme("Vatican", "Cité du Vatican",
        "Ma capitale est la Cité du Vatican, le plus petit État du monde, où la spiritualité est au cœur de tout. Qui suis-je?"),
  ];

  final List<String> mots = [];

  String motSelectionne = "";
  String vraiCapitale = "";
  String fauxCapitale = "";
  String fauxEnigme = "";
  String vraiEnigme = "";
  String vraiCapitale2 = "";
  String fauxCapitale2 = "";
  String fauxCapitale3 = "";
  bool dataready = false;

  Initialise() {
    int vraiIndex = Random().nextInt(enigmes.length);

    int fauxIndex1 = Random().nextInt(enigmes.length);

    int fauxIndex2 = Random().nextInt(enigmes.length);

    int fauxIndex3 = Random().nextInt(enigmes.length);

    setState(() {
      vraiCapitale = enigmes[vraiIndex].pays;
      vraiCapitale2 = enigmes[vraiIndex].pays;
      vraiEnigme = enigmes[vraiIndex].enigme;
      fauxCapitale = enigmes[fauxIndex1].pays;
      fauxCapitale2 = enigmes[fauxIndex2].pays;
      fauxCapitale3 = enigmes[fauxIndex3].pays;

      fauxEnigme = enigmes[fauxIndex1].enigme;

      dataready = true;
    });
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
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: const AssetImage('assets/10.png'),
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
                            audioPlayer.stop();
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const MiniJeuPages(),
                              ),
                            );
                          },
                        ),
                        SizedBox(width: widthScreen - 180),
                        IconButton(
                          icon:
                              const Icon(Icons.volume_up, color: Colors.black),
                          iconSize: 40,
                          onPressed: () {
                            audioPlayer
                                .open(Audio('assets/${vraiCapitale}.mp3'));
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'Enigme',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    'Difficile',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'Quel est le pays?',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(
                    height: 80,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      vraiEnigme,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 150,
                          height: 30,
                          child: ElevatedButton(
                            onPressed: () {
                              audioPlayer.stop();
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FauxENEU2()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 26, 126, 165),
                              minimumSize: const Size(10, 30),
                            ),
                            child: Text(
                              fauxCapitale,
                              style: TextStyle(
                                color: const Color.fromARGB(255, 255, 255, 255),
                                fontSize: calculateFontSize(fauxCapitale),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 30),
                        Container(
                          width: 150,
                          height: 30,
                          child: ElevatedButton(
                            onPressed: () {
                              audioPlayer.stop();
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => VraiENEU2()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 26, 126, 165),
                              minimumSize: const Size(10, 30),
                            ),
                            child: Text(
                              vraiCapitale,
                              style: TextStyle(
                                color: const Color.fromARGB(255, 255, 255, 255),
                                fontSize: calculateFontSize(vraiCapitale),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ]),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          width: 150,
                          height: 30,
                          child: ElevatedButton(
                            onPressed: () {
                              audioPlayer.stop();
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FauxENEU2()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 26, 126, 165),
                              minimumSize: const Size(10, 30),
                            ),
                            child: Text(
                              fauxCapitale2,
                              style: TextStyle(
                                color: const Color.fromARGB(255, 255, 255, 255),
                                fontSize: calculateFontSize(fauxCapitale2),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 30),
                        Container(
                          width: 150,
                          height: 30,
                          child: ElevatedButton(
                            onPressed: () {
                              audioPlayer.stop();
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => VraiENEU2()),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 26, 126, 165),
                              minimumSize: const Size(10, 30),
                            ),
                            child: Text(
                              fauxCapitale3,
                              style: TextStyle(
                                color: const Color.fromARGB(255, 255, 255, 255),
                                fontSize: calculateFontSize(fauxCapitale3),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ]),
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
                  child: const Text('OK'),
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
