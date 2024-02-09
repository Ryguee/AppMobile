import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/details/Parametres/parametre1.dart';
import 'package:flutter_application_1/Pages/details/Parametres/Parametre2.dart';
import 'package:flutter_application_1/Pages/details/Salon%20Mini%20jeu/Mini_jeu.dart';

class Parametre3Pages extends StatefulWidget {
  const Parametre3Pages({Key? key}) : super(key: key);

  @override
  _Parametre3PagesState createState() => _Parametre3PagesState();
}

class _Parametre3PagesState extends State<Parametre3Pages> {
  double containerWidth = 120.0;
  double containerWidth2 = 120.0;
  double containerWidth3 = 120.0;
  final double maxShift = 120.0; // Limite maximale de décalage
  final double minShift = 0.0; // Limite minimale de décalage
  final double maxShift2 = 120.0; // Limite maximale de décalage
  final double minShift2 = 0.0; // Limite minimale de décalage
  final double maxShift3 = 120.0; // Limite maximale de décalage
  final double minShift3 = 0.0; // Limite minimale de décalage

  void moveContainerRight() {
    setState(() {
      containerWidth = (containerWidth + 20).clamp(minShift, maxShift);
    });
  }

  void moveContainerRight2() {
    setState(() {
      containerWidth2 = (containerWidth2 + 20).clamp(minShift2, maxShift2);
    });
  }

  void moveContainerRight3() {
    setState(() {
      containerWidth3 = (containerWidth3 + 20).clamp(minShift3, maxShift3);
    });
  }

  // Méthode pour déplacer le conteneur vers la gauche
  void moveContainerLeft() {
    setState(() {
      containerWidth = (containerWidth - 20).clamp(minShift, maxShift);
    });
  }

  void moveContainerLeft2() {
    setState(() {
      containerWidth2 = (containerWidth2 - 20).clamp(minShift2, maxShift2);
    });
  }

  void moveContainerLeft3() {
    setState(() {
      containerWidth3 = (containerWidth3 - 20).clamp(minShift3, maxShift3);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: <Widget>[
      Image.asset(
        'assets/7.jpg',
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        fit: BoxFit.cover,
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 80,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(0, 0, 0, 0.68),
            ),
          ),
        ],
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 0.5),
        ),
      ),

      Positioned(
        top: MediaQuery.of(context).size.height / 2 - 200,
        left: MediaQuery.of(context).size.width / 2 - 206,
        child: Container(
          width: 80,
          height: 70,
          decoration: const BoxDecoration(
            color: Color.fromRGBO(255, 255, 255, 0.38),
          ),
        ),
      ),
      Positioned(
        top: MediaQuery.of(context).size.height / 2 - 320,
        left: MediaQuery.of(context).size.width / 2 - 210,
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Parametre1Pages(),
              ),
            );
          },
          child: const Text(
            'Compte',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      Positioned(
        top: MediaQuery.of(context).size.height / 2 - 250,
        left: MediaQuery.of(context).size.width / 2 - 212,
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Parametre2Pages(),
              ),
            );
          },
          child: const Text(
            'Sécurité',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      Positioned(
        top: MediaQuery.of(context).size.height / 2 - 178,
        left: MediaQuery.of(context).size.width / 2 - 190,
        child: const Text(
          'Audio',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      Positioned(
        top: MediaQuery.of(context).size.height / 2 + 350,
        left: MediaQuery.of(context).size.width / 2 - 205,
        child: TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MiniJeuPages()),
            );
          },
          child: const Text(
            'Retour',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      Positioned(
        top: MediaQuery.of(context).size.height / 2 - 350,
        left: MediaQuery.of(context).size.width / 2 - 35,
        child: const Text(
          'Paramètres',
          style: TextStyle(
            color: Colors.black,
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      const Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Row(
            children: [
              SizedBox(
                width: 90,
              ),
              Text(
                "Volume :",
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 20,
              ),
            ],
          ),
        ],
      ),
      Positioned(
        top: 110,
        right: 30,
        child: Container(
          width: 120,
          height: 10,
          color: const Color.fromARGB(255, 122, 121, 121),
        ),
      ),
      const Column(children: [
        SizedBox(
          height: 150,
        ),
      ]),
      Positioned(
        top: 110,
        right: 30,
        child: Container(
          width: containerWidth,
          height: 10,
          color: const Color.fromARGB(255, 0, 0, 0),
        ),
      ),
      const Column(children: [
        SizedBox(
          height: 150,
        ),
      ]),
      Positioned(
          top: 88,
          right: -8,
          child: IconButton(
            icon: const Icon(Icons.chevron_right, color: Colors.black),
            iconSize: 40,
            onPressed: moveContainerLeft,
          )),
      Positioned(
        top: 88,
        right: 132,
        child: IconButton(
          icon: const Icon(Icons.chevron_left, color: Colors.black),
          iconSize: 40,
          onPressed: moveContainerRight,
        ),
      ),
      //hg,gog,pk,jj,

      const Column(
        children: [
          SizedBox(
            height: 150,
          ),
          Row(
            children: [
              SizedBox(
                width: 90,
              ),
              Text(
                "Musique :",
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 20,
              ),
            ],
          ),
        ],
      ),
      Positioned(
        top: 160,
        right: 30,
        child: Container(
          width: 120,
          height: 10,
          color: const Color.fromARGB(255, 122, 121, 121),
        ),
      ),
      const Column(children: [
        SizedBox(
          height: 250,
        ),
      ]),
      Positioned(
        top: 160,
        right: 30,
        child: Container(
          width: containerWidth2,
          height: 10,
          color: const Color.fromARGB(255, 0, 0, 0),
        ),
      ),
      const Column(children: [
        SizedBox(
          height: 150,
        ),
      ]),
      Positioned(
        top: 138,
        right: -8,
        child: IconButton(
          icon: const Icon(Icons.chevron_right, color: Colors.black),
          iconSize: 40,
          onPressed: moveContainerLeft2,
        ),
      ),
      Positioned(
        top: 138,
        right: 132,
        child: IconButton(
          icon: const Icon(Icons.chevron_left, color: Colors.black),
          iconSize: 40,
          onPressed: moveContainerRight2,
        ),
      ),
      //fhlf,;h,f

      const Column(
        children: [
          SizedBox(
            height: 200,
          ),
          Row(
            children: [
              SizedBox(
                width: 90,
              ),
              Text(
                "Effet sonore:",
                style: TextStyle(
                  fontSize: 20,
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: 20,
              ),
            ],
          ),
        ],
      ),
      Positioned(
        top: 210,
        right: 30,
        child: Container(
          width: 120,
          height: 10,
          color: const Color.fromARGB(255, 122, 121, 121),
        ),
      ),
      const Column(children: [
        SizedBox(
          height: 250,
        ),
      ]),
      Positioned(
        top: 210,
        right: 30,
        child: Container(
          width: containerWidth3,
          height: 10,
          color: const Color.fromARGB(255, 0, 0, 0),
        ),
      ),
      const Column(children: [
        SizedBox(
          height: 150,
        ),
      ]),
      Positioned(
        top: 188,
        right: -8,
        child: IconButton(
          icon: const Icon(Icons.chevron_right, color: Colors.black),
          iconSize: 40,
          onPressed: moveContainerLeft3,
        ),
      ),
      Positioned(
        top: 188,
        right: 132,
        child: IconButton(
          icon: const Icon(Icons.chevron_left, color: Colors.black),
          iconSize: 40,
          onPressed: moveContainerRight3,
        ),
      ),
    ]));
  }
}
