import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/details/Jeu%20Lieu/all/Carte/Europe4.dart';

import 'package:flutter_application_1/Pages/details/Parametres/parametre1.dart';
import 'package:flutter_application_1/Pages/details/Jeu%20Lieu/difficulte_lieu.dart';
import 'package:flutter_application_1/Pages/details/Profil/profil.dart';
import 'package:flutter_application_1/Pages/details/Salon%20Mini%20jeu/Mini_jeu.dart';

class ParametreLieuPage extends StatefulWidget {
  const ParametreLieuPage({Key? key}) : super(key: key);

  @override
  State<ParametreLieuPage> createState() => _ParametreLieuPageState();
}

class _ParametreLieuPageState extends State<ParametreLieuPage> {
  String? selectedZone;
  String? selectedZone2;
  String? selectedZone3;
  String? selectedZone4;
  final List<String> pages = ["Espagne", "France", "Angleterre"];

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
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 0.5),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2 - 160,
            left: MediaQuery.of(context).size.width / 2 - 185,
            child: Container(
              width: 370,
              height: 480,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(0, 0, 0, 0.498),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2 - 200,
            left: MediaQuery.of(context).size.width / 2 - 45,
            child: const Text(
              'Mini jeu',
              style: TextStyle(
                color: Colors.black,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2 - 375,
            left: MediaQuery.of(context).size.width / 2 + 150,
            child: IconButton(
              icon: const Icon(Icons.settings, color: Colors.black),
              iconSize: 40,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Parametre1Pages(),
                  ),
                );
              },
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2 - 375,
            right: MediaQuery.of(context).size.width / 2 + 150,
            child: IconButton(
              icon: const Icon(Icons.star_outline, color: Colors.black),
              iconSize: 40,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Parametre1Pages(),
                  ),
                );
              },
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  const SizedBox(
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
          Positioned(
            top: MediaQuery.of(context).size.height / 2 - 170,
            left: MediaQuery.of(context).size.width / 2 - 195,
            child: Column(
              children: [
                Image.asset(
                  'assets/terre.png',
                  width: 90,
                  height: 90,
                ),
              ],
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2 - 140,
            left: MediaQuery.of(context).size.width / 2 - 25,
            child: const Text(
              'Zone :',
              style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          // Parametre

          //
          Positioned(
            top: MediaQuery.of(context).size.height / 2 - 90,
            left: MediaQuery.of(context).size.width / 2 - 175,
            child: const Text(
              'Europe :        Amerique  :        Afrique :        Monde :',
              style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
              top: MediaQuery.of(context).size.height / 2 - 75,
              left: MediaQuery.of(context).size.width / 2 - 175,
              child: Checkbox(
                value: selectedZone == 'Europe',
                onChanged: (value) {
                  setState(() {
                    selectedZone = value! ? 'Europe' : null;
                  });
                },
                fillColor: MaterialStateProperty.resolveWith(getColor),
              )),
          Positioned(
            top: MediaQuery.of(context).size.height / 2 - 75,
            left: MediaQuery.of(context).size.width / 2 - 75,
            child: Checkbox(
              value: selectedZone == 'Amerique',
              onChanged: (value) {
                setState(() {
                  selectedZone = value! ? 'Amerique' : null;
                });
              },
              fillColor: MaterialStateProperty.resolveWith(getColor),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2 - 75,
            right: MediaQuery.of(context).size.width / 2 - 75,
            child: Checkbox(
              value: selectedZone == 'Afrique',
              onChanged: (value) {
                setState(() {
                  selectedZone = value! ? 'Afrique' : null;
                });
              },
              fillColor: MaterialStateProperty.resolveWith(getColor),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2 - 75,
            right: MediaQuery.of(context).size.width / 2 - 175,
            child: Checkbox(
              value: selectedZone == 'Monde',
              onChanged: (value) {
                setState(() {
                  selectedZone = value! ? 'Monde' : null;
                });
              },
              fillColor: MaterialStateProperty.resolveWith(getColor),
            ),
          ),
/*d
h
h
h
h
h
h





*/
          Positioned(
            top: MediaQuery.of(context).size.height / 2 - 20,
            left: MediaQuery.of(context).size.width / 2 - 25,
            child: const Text(
              'Temps :',
              style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2 + 20,
            left: MediaQuery.of(context).size.width / 2 - 160,
            child: const Text(
              '3s                  5s                 10s                15s',
              style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
              top: MediaQuery.of(context).size.height / 2 + 35,
              left: MediaQuery.of(context).size.width / 2 - 175,
              child: Checkbox(
                value: selectedZone2 == '3s',
                onChanged: (value) {
                  setState(() {
                    selectedZone2 = value! ? '3s' : null;
                  });
                },
                fillColor: MaterialStateProperty.resolveWith(getColor),
              )),
          Positioned(
            top: MediaQuery.of(context).size.height / 2 + 35,
            left: MediaQuery.of(context).size.width / 2 - 75,
            child: Checkbox(
              value: selectedZone2 == '5s',
              onChanged: (value) {
                setState(() {
                  selectedZone2 = value! ? '5s' : null;
                });
              },
              fillColor: MaterialStateProperty.resolveWith(getColor),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2 + 35,
            right: MediaQuery.of(context).size.width / 2 - 75,
            child: Checkbox(
              value: selectedZone2 == '10s',
              onChanged: (value) {
                setState(() {
                  selectedZone2 = value! ? '10s' : null;
                });
              },
              fillColor: MaterialStateProperty.resolveWith(getColor),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2 + 35,
            right: MediaQuery.of(context).size.width / 2 - 175,
            child: Checkbox(
              value: selectedZone2 == '15s',
              onChanged: (value) {
                setState(() {
                  selectedZone2 = value! ? '15s' : null;
                });
              },
              fillColor: MaterialStateProperty.resolveWith(getColor),
            ),
          ),

          Positioned(
            top: MediaQuery.of(context).size.height / 2 + 100,
            left: MediaQuery.of(context).size.width / 2 - 25,
            child: const Text(
              'Chance :',
              style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2 + 130,
            left: MediaQuery.of(context).size.width / 2 - 157,
            child: const Text(
              '1                    2                     3                    4',
              style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
                fontSize: 17,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
              top: MediaQuery.of(context).size.height / 2 + 145,
              left: MediaQuery.of(context).size.width / 2 - 175,
              child: Checkbox(
                value: selectedZone3 == '1',
                onChanged: (value) {
                  setState(() {
                    selectedZone3 = value! ? '1' : null;
                  });
                },
                fillColor: MaterialStateProperty.resolveWith(getColor),
              )),
          Positioned(
            top: MediaQuery.of(context).size.height / 2 + 145,
            left: MediaQuery.of(context).size.width / 2 - 75,
            child: Checkbox(
              value: selectedZone3 == '2',
              onChanged: (value) {
                setState(() {
                  selectedZone3 = value! ? '2' : null;
                });
              },
              fillColor: MaterialStateProperty.resolveWith(getColor),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2 + 145,
            right: MediaQuery.of(context).size.width / 2 - 75,
            child: Checkbox(
              value: selectedZone3 == '3',
              onChanged: (value) {
                setState(() {
                  selectedZone3 = value! ? '3' : null;
                });
              },
              fillColor: MaterialStateProperty.resolveWith(getColor),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2 + 145,
            right: MediaQuery.of(context).size.width / 2 - 175,
            child: Checkbox(
              value: selectedZone3 == '4',
              onChanged: (value) {
                setState(() {
                  selectedZone3 = value! ? '4' : null;
                });
              },
              fillColor: MaterialStateProperty.resolveWith(getColor),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2 + 230,
            right: MediaQuery.of(context).size.width / 2 - 40,
            child: Checkbox(
              value: selectedZone4 == 'Révision',
              onChanged: (value) {
                setState(() {
                  selectedZone = value! ? '0' : null;
                  selectedZone2 = value! ? '0' : null;
                  selectedZone3 = value! ? '0' : null;
                  selectedZone4 = value! ? 'Révision' : null;
                });
              },
              fillColor: MaterialStateProperty.resolveWith(getColor),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2 + 200,
            left: MediaQuery.of(context).size.width / 2 - 25,
            child: const Text(
              'Révision :',
              style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Positioned(
            top: MediaQuery.of(context).size.height / 2 + 270,
            left: MediaQuery.of(context).size.width / 2 - 175,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const MiniJeuPages()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 26, 126, 165),
                minimumSize: const Size(10, 30),
              ),
              child: const Text(
                'Retour',
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          Positioned(
            top: MediaQuery.of(context).size.height / 2 + 270,
            right: MediaQuery.of(context).size.width / 2 - 175,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Europe4Page()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 26, 126, 165),
                minimumSize: const Size(10, 30),
              ),
              child: const Text(
                'Go',
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
    );
  }

  Color getColor(Set<MaterialState> states) {
    const Set<MaterialState> interactiveStates = <MaterialState>{
      MaterialState.selected,
      MaterialState.focused,
      MaterialState.pressed,
    };
    if (states.any(interactiveStates.contains)) {
      return const Color.fromARGB(255, 26, 126, 165);
    }
    return Colors.white;
  }
}
