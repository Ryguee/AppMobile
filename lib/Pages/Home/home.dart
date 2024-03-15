import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/details/Connexion/connexion.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: <Widget>[
      // Fond d'écran avec la première image à partir du dossier 'assets'
      Image.asset(
        'assets/1.png', // Remplacez 'your_image.png' par le nom de votre première image
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        fit: BoxFit.cover, // Assurez-vous que l'image couvre toute la zone
      ),

      Positioned(
        top: MediaQuery.of(context).size.height / 2 - 235,
        left: MediaQuery.of(context).size.width / 2 - 215,
        child: Image.asset(
          'assets/2.png', // Remplacez 'your_image.png' par le nom de votre deuxième image
          width: 450.0, // Ajustez la largeur de l'image
          height: 450.0, // Ajustez la hauteur de l'image
          fit: BoxFit.cover, // Assurez-vous que l'image couvre toute la zone
        ),
      ),

      Positioned(
          bottom: MediaQuery.of(context).size.height / 2 - 300,
          right: MediaQuery.of(context).size.width / 2 - 105,
          child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ConnexionPage()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color.fromARGB(255, 26, 149, 77),
              ),
              child: const Text('Commencer',
                  style: TextStyle(
                    fontSize: 28.0,
                    color: Colors.white,
                  ))))
    ]));
  }
}
