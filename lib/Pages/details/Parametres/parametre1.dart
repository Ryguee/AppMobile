import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/details/Connexion/connexion.dart';
import 'package:flutter_application_1/Pages/details/Salon%20Mini%20jeu/Mini_jeu.dart';
import 'package:flutter_application_1/Pages/details/Parametres/Parametre2.dart';
import 'package:flutter_application_1/Pages/details/Parametres/parametre3.dart';

class Parametre1Pages extends StatefulWidget {
  const Parametre1Pages({super.key});

  @override
  State<Parametre1Pages> createState() => _Parametre1PagesState();
}

class _Parametre1PagesState extends State<Parametre1Pages> {
  late String dropdownValue = list.first;
  List<String> list = <String>['Homme', 'Femme', 'Autres', 'Dinosaure'];
  @override
  @override
  void initState() {
    super.initState();
  }

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
          top: MediaQuery.of(context).size.height / 2 - 348,
          width: MediaQuery.of(context).size.width / 2 - 126,
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
          left: MediaQuery.of(context).size.width / 2 - 198,
          child: const Text(
            'Compte',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold,
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
                    builder: (context) => const Parametre2Pages()),
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
                  "Changer le Prénom :",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                SizedBox(
                  width: 125,
                  height: 20,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      labelText: 'Prénom ',
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
                  "Changer le nom :",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 45,
                ),
                SizedBox(
                  width: 125,
                  height: 20,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      labelText: 'Nom ',
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
                  "Date de naissance :",
                  style: TextStyle(
                    fontSize: 18,
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 20),
                SizedBox(
                  width: 125,
                  height: 20,
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                      labelText: '01/01/1900 ',
                      labelStyle: TextStyle(
                        fontSize: 15,
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
        const SizedBox(
          height: 100,
        ),
        Row(
          children: [
            const SizedBox(
              height: 520,
              width: 90,
            ),
            const Text("Genre  :",
                style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                )),
            const SizedBox(
              width: 120,
            ),
            DropdownButton<String>(
              value: dropdownValue,
              icon: const Icon(Icons.arrow_downward),
              iconEnabledColor: const Color.fromARGB(255, 0, 0, 0),
              elevation: 16,
              underline: Container(
                height: 2,
                color: const Color.fromARGB(255, 0, 0, 0),
              ),
              onChanged: (String? value) {
                // This is called when the user selects an item.
                setState(() {
                  dropdownValue = value!;
                });
              },
              items: list.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            )
          ],
        ),
        Positioned(
          top: MediaQuery.of(context).size.height / 2 - 100,
          left: MediaQuery.of(context).size.width / 2 - 35,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ConnexionPage()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromRGBO(255, 255, 255, 0.5),
              minimumSize: const Size(10, 30),
            ),
            child: const Text(
              'Deconnexion',
              style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
