import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/details/Aides/adresse_oublie.dart';
import 'package:flutter_application_1/Pages/details/Aides/popmdp.dart';

import 'package:flutter_application_1/Pages/details/Connexion/connexion.dart';
import 'package:flutter_application_1/Pages/details/Inscription/Inscription.dart';

class MdpOublie extends StatelessWidget {
  const MdpOublie({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Image.asset(
            'assets/3.png',
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.cover,
          ),
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
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 200),
                const SizedBox(
                  width: 250, // Adjust the width as needed
                  child: TextField(
                    style: TextStyle(
                      color: Color.fromARGB(198, 15, 182, 224),
                    ),
                    decoration: InputDecoration(
                      hintText: 'Adresse mail',
                      hintStyle: TextStyle(
                        color: Color.fromARGB(198, 15, 182, 224),
                      ),
                      fillColor: Color.fromARGB(216, 44, 36, 201),
                      filled: true,
                      border: InputBorder.none,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const AdresseOublie(),
                      ),
                    );
                  },
                  child: const Text(
                    'Adresse mail oubliée',
                    style: TextStyle(
                      color: Color.fromARGB(197, 13, 211, 59),
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const ConnexionPage(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 26, 149, 77),
                        minimumSize: const Size(120, 30),
                      ),
                      child: const Text(
                        'Retour',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const PopupMdp()),
                        );
                        // Action à effectuer lorsqu'on appuie sur le bouton Commencer
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 26, 149, 77),
                        minimumSize: const Size(120, 30),
                      ),
                      child: const Text(
                        'Envoyer',
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
