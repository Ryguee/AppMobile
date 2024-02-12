import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/details/Connexion/connexion.dart';

class PopupMdp extends StatelessWidget {
  const PopupMdp({Key? key});

  @override
  Widget build(BuildContext context) {
    double heightScreen = MediaQuery.of(context).size.height;
    double widthScreen = MediaQuery.of(context).size.width;

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
            child: Stack(
              alignment: Alignment.center,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 200),
                    Container(
                      height: 200,
                      width: widthScreen - 80,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(198, 15, 182, 224),
                        borderRadius: BorderRadius.circular(20.0),
                        // Bordure arrondie
                        border: Border.all(color: Colors.black, width: 3),
                      ),
                    ),
                    // Espace entre les conteneurs
                  ],
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height / 2 + 0,
                  child: Transform.rotate(
                    angle: 10 * 3.1415926535 / 210,
                    child: Container(
                      height: 200,
                      width: widthScreen - 100,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(198, 15, 182, 224),
                        borderRadius: BorderRadius.circular(20.0),
                        // Bordure arrondie
                        border: Border.all(color: Colors.black, width: 3),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height / 2 + 0,
                  child: Container(
                    height: 200,
                    width: widthScreen - 100,
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Lien envoyé',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Un lien vers votre boite mail pour modifier votre mot de passe a été envoyé a votre adresse mail. Vous pourrez changer le mot de passe dessus.',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 13.0,
                            fontWeight: FontWeight.bold,
                          ),
                          softWrap:
                              true, // Permet au texte de revenir à la ligne
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height / 2 + 220,
                  left: MediaQuery.of(context).size.width / 2 - 85,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ConnexionPage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(216, 44, 36, 201),
                      minimumSize: const Size(10, 30),
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
