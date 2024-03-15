import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/details/Inscription/Inscription.dart';
import 'package:flutter_application_1/Pages/details/Salon%20Mini%20jeu/Mini_jeu.dart';

class ProfilPage extends StatelessWidget {
  const ProfilPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: <Widget>[
      // Fond d'écran avec la première image à partir du dossier 'assets'
      Image.asset(
        'assets/7.jpg',
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        fit: BoxFit.cover,
      ),

      // Conteneur avec fond semi-transparent
      Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(255, 255, 255, 0.5),
        ),
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              SizedBox(
                width: 90,
              ),
              Image.asset(
                'assets/8.png',
                width: 250,
                height: 250,
              ),
            ],
          ),
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Image à positionner en haut
          SizedBox(
            height: 200,
          ),

          const Center(
            child: Text(
              "Profil",
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Image.asset(
            'assets/9.png',
            width: 100,
            height: 100,
          ),

          const SizedBox(
            height: 50,
          ),

          // Premier champ pseudo
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(
                  left: 20.0,
                ),
                child: Text(
                  "Pseudo",
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 0, 0),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Column(
                children: [
                  Row(
                    children: [
                      const SizedBox(
                        width: 60,
                      ),
                      Container(
                        width: 125,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.white, // Fond blanc
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          border: Border.all(
                            color: Colors.white, // Bordure blanche
                            width: 2.0, // Épaisseur de la bordure
                          ),
                        ),
                        child: const TextField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),

          // Deuxième champ pseudo
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 20.0,
                ),
                child: Text(
                  "Statistique Globale :",
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 0, 0),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: 150,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 60,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),

          // Troisième champ pseudo en bas
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 20.0,
                ),
                child: Text(
                  "Jeu :",
                  style: TextStyle(
                    color: Color.fromARGB(255, 225, 0, 255),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              const Text(
                "                   %",
                style: TextStyle(
                    color: Color.fromARGB(255, 119, 0, 255),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: 20,
              ),
              const Text(
                "Drapeau :",
                style: TextStyle(
                  color: Color.fromARGB(255, 225, 0, 255),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              const Text(
                "                %",
                style: TextStyle(
                    color: Color.fromARGB(255, 119, 0, 255),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 20.0,
                ),
                child: Text(
                  "Population :",
                  style: TextStyle(
                    color: Color.fromARGB(255, 225, 0, 255),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              const Text(
                "       %",
                style: TextStyle(
                    color: Color.fromARGB(255, 119, 0, 255),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                width: 20,
              ),
              const Text(
                "Enigme :",
                style: TextStyle(
                  color: Color.fromARGB(255, 225, 0, 255),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              const Text(
                "                 %",
                style: TextStyle(
                    color: Color.fromARGB(255, 119, 0, 255),
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(width: 0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MiniJeuPages()),
                  );
                },
                style: ElevatedButton.styleFrom(
                 backgroundColor: Color.fromARGB(255, 255, 0, 0),
                  minimumSize: const Size(80, 30),
                ),
                child: const Text(
                  'Go',
                  style: TextStyle(
                    color: Color.fromARGB(255, 255, 251, 0),
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ]));
  }
}
