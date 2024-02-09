import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/details/Aides/mdp_oublie.dart';
import 'package:flutter_application_1/Pages/details/Aides/popadresse.dart';

class AdresseOublie extends StatelessWidget {
  const AdresseOublie({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: <Widget>[
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
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const SizedBox(height: 200),
        const SizedBox(
          width: 100, // Adjust the width as needed
          child: TextField(
            style: TextStyle(
              color: Color.fromARGB(198, 15, 182, 224),
            ),
            decoration: InputDecoration(
              hintText: 'Prénom',
              hintStyle: TextStyle(
                color: Color.fromARGB(198, 15, 182, 224),
              ),
              fillColor: Color.fromARGB(216, 44, 36, 201),
              filled: true,
              border: InputBorder.none,
            ),
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              const SizedBox(
                width: 100, // Adjust the width as needed
                child: TextField(
                  style: TextStyle(
                    color: Color.fromARGB(198, 15, 182, 224),
                  ),
                  decoration: InputDecoration(
                    hintText: 'Nom',
                    hintStyle: TextStyle(
                      color: Color.fromARGB(198, 15, 182, 224),
                    ),
                    fillColor: Color.fromARGB(216, 44, 36, 201),
                    filled: true,
                    border: InputBorder.none,
                  ),
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 20),
                    const SizedBox(
                      width: 170, // Adjust the width as needed
                      child: TextField(
                        style: TextStyle(
                          color: Color.fromARGB(198, 15, 182, 224),
                        ),
                        decoration: InputDecoration(
                          hintText: 'Date de Naissance',
                          hintStyle: TextStyle(
                            color: Color.fromARGB(198, 15, 182, 224),
                          ),
                          fillColor: Color.fromARGB(216, 44, 36, 201),
                          filled: true,
                          border: InputBorder.none,
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
                                builder: (context) => const MdpOublie(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 26, 149, 77),
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
                                  builder: (context) => const PopupAdresse()),
                            );
                            // Action à effectuer lorsqu'on appuie sur le bouton Commencer
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 26, 149, 77),
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
        )
      ]))
    ]));
  }
}
