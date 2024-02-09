import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/details/Profil/profil.dart';
import 'package:flutter_application_1/Pages/details/Aides/mdp_oublie.dart';
import 'package:flutter_application_1/Pages/details/Inscription/Inscription.dart';

class ConnexionPage extends StatelessWidget {
  const ConnexionPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // Fond d'écran avec la première image à partir du dossier 'assets'
          Image.asset(
            'assets/3.png',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),

          // Deuxième image positionnée à droite et en haut de l'écran
          Positioned(
            top: MediaQuery.of(context).size.height / -2 + 240,
            right: MediaQuery.of(context).size.width / -2 + 17,
            child: Transform.rotate(
              angle: 222 * 3.1415926535 / 180,
              child: Image.asset(
                'assets/2.png',
                width: 550.0,
                height: 550.0,
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Champ de texte pour l'adresse e-mail
          Positioned(
            top: MediaQuery.of(context).size.height / 2 - 30,
            left: MediaQuery.of(context).size.width / 2 - 155,
            right: MediaQuery.of(context).size.width / 2 - 155,
            child: const TextField(
              style: TextStyle(
                color: Color.fromARGB(198, 15, 182, 224),
              ),
              decoration: InputDecoration(
                hintText: 'Adresse e-mail',
                hintStyle: TextStyle(
                  color: Color.fromARGB(198, 15, 182, 224),
                ),
                fillColor: Color.fromARGB(216, 44, 36, 201),
                filled: true,
                border: InputBorder.none,
              ),
            ),
          ),

          // Champ de texte pour le mot de passe
          Positioned(
            top: MediaQuery.of(context).size.height / 2 + 50,
            left: MediaQuery.of(context).size.width / 2 - 155,
            right: MediaQuery.of(context).size.width / 2 - 155,
            child: const TextField(
              style: TextStyle(
                color: Color.fromARGB(198, 15, 182, 224),
              ),
              decoration: InputDecoration(
                hintText: 'Mot de passe',
                hintStyle: TextStyle(
                  color: Color.fromARGB(198, 15, 182, 224),
                ),
                fillColor: Color.fromARGB(216, 44, 36, 201),
                filled: true,
                border: InputBorder.none,
              ),
            ),
          ),

          Positioned(
            top: MediaQuery.of(context).size.height / 2 + 100,
            left: MediaQuery.of(context).size.width / 2 - 70,
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MdpOublie()),
                );
              },
              child: const Text(
                'Mot de passe oubliée',
                style: TextStyle(
                  color: Color.fromARGB(197, 13, 211, 59),
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          // Élément "Inscription"
          Positioned(
            top: MediaQuery.of(context).size.height / 2 + 140,
            left: MediaQuery.of(context).size.width / 2 - 145,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const InscriptionPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 26, 149, 77),
                minimumSize: const Size(10, 30),
              ),
              child: const Text(
                'Inscription',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          // Élément "Commencer"
          Positioned(
            top: MediaQuery.of(context).size.height / 2 + 140,
            left: MediaQuery.of(context).size.width / 2 + 20,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProfilPage()),
                ); // Action à effectuer lorsqu'on appuie sur le bouton Commencer
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 26, 149, 77),
                minimumSize: const Size(10, 30),
              ),
              child: const Text(
                'Commencer',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
