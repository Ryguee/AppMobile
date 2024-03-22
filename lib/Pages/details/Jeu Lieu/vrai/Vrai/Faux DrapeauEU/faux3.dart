import 'dart:ui';
import 'package:flutter/material.dart';

import 'dart:math';

import 'package:flutter_application_1/Pages/details/Jeu%20Lieu/all/Carte/Europe3.dart';
import 'package:flutter_application_1/Pages/details/Jeu%20Lieu/all/Drapeau/Drapeau3.dart';
import 'package:flutter_application_1/Pages/details/Salon%20Mini%20jeu/Mini_jeu.dart';

void main() {
  runApp(FauxDREU3());
}

class FauxDREU3 extends StatelessWidget {
  FauxDREU3({Key? key});

  List<Widget> pages = [
    Drapeau3Page()
  ];

  Widget choisirPageAleatoire() {
    Random random = Random();
    int index = random.nextInt(pages.length);
    return pages[index];
  }

  @override
  Widget build(BuildContext context) {
    double heightScreen = MediaQuery.of(context).size.height;
    double widthScreen = MediaQuery.of(context).size.width;

    return MaterialApp(
      home: Scaffold(
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
              top: heightScreen / 2 - 150,
              left: widthScreen / 2 - 100,
              child: const Icon(
                Icons.close,
                color: Color.fromARGB(255, 255, 0, 0),
                size: 200,
              ),
            ),
            Positioned(
              top: heightScreen / 2 + 50,
              left: widthScreen / 2 - 30,
              child: const Text(
                'Faux',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              top: heightScreen / 2 - 285,
              left: widthScreen / 2 - 20,
              child: const Text(
                'Lieu',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              top: heightScreen / 2 - 250,
              left: widthScreen / 2 - 18,
              child: const Text(
                'Difficle',
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height / 2 + 230,
              right: MediaQuery.of(context).size.width / 2 - 65,
              child: ElevatedButton(
                onPressed: () {
                  Widget pageAleatoire = choisirPageAleatoire();
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => pageAleatoire),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 26, 126, 165),
                  minimumSize: const Size(10, 30),
                ),
                child: const Text(
                  'Continuer',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
