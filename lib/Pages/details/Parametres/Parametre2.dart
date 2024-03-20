import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/details/Salon%20Mini%20jeu/Mini_jeu.dart';
import 'package:flutter_application_1/Pages/details/Parametres/parametre1.dart';
import 'package:flutter_application_1/Pages/details/Parametres/parametre3.dart';

class Parametre2Pages extends StatelessWidget {
  const Parametre2Pages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
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
            top: MediaQuery.of(context).size.height / 2 - 260,
            left: MediaQuery.of(context).size.width / 2 - 205,
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
            left: MediaQuery.of(context).size.width / 2 - 205,
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Parametre3Pages()),
                );
              },
              child: const Text(
                'Audio',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
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
            top: MediaQuery.of(context).size.height / 2 - 400,
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
          Container(
            child: const Column(
              children: [
                SizedBox(
                  height: 150,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 135,
                    ),
                    Text(
                      "Changer l'adresse mail  :",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 165,
                    ),
                    SizedBox(
                      width: 140,
                      height: 20,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          labelText: 'Adresse mail ',
                          labelStyle: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            child: const Column(
              children: [
                SizedBox(
                  height: 240,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 125,
                    ),
                    Text(
                      "Changer le mot de passe  :",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 165,
                    ),
                    SizedBox(
                      width: 140,
                      height: 20,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          labelText: 'Mot de passe ',
                          labelStyle: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            child: const Column(
              children: [
                SizedBox(
                  height: 400,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 175,
                    ),
                    Text(
                      "Centre d'aide :",
                      style: TextStyle(
                        fontSize: 20,
                        color: Color.fromARGB(255, 0, 0, 0),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 90,
                    ),
                    SizedBox(
                      width: 310,
                      height: 20,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10),
                            ),
                          ),
                          labelText: 'Contact.jeuographie@gmail.com',
                          labelStyle: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
