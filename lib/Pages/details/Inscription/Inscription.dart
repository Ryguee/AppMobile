import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/details/Profil/profil.dart';
import 'package:flutter_application_1/Pages/details/Connexion/connexion.dart';

class InscriptionPage extends StatefulWidget {
  const InscriptionPage({super.key});

  @override
  InscriptionPageState createState() => InscriptionPageState();
}

class InscriptionPageState extends State<InscriptionPage> {
  late String dropdownValue = list.first;
  List<String> list = <String>['Homme', 'Femme', 'Autres', 'Dinosaure'];

  double labels = 14;
  double sizer = 18;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double heightScreen = MediaQuery.of(context).size.height;
    double widthScreen = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SingleChildScrollView(
            child: Container(
      height: heightScreen, // Set the height to cover the entire screen
      width: widthScreen,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/4.jpg'),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: <Widget>[
          Column(
            children: [
              const SizedBox(
                height: 160,
              ),
              Container(
                height: heightScreen - 199,
                width: widthScreen - 50,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(255, 255, 255, 0.3),
                ),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    const Center(
                      child: Text("Création de compte",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xff4EF194),
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          )),
                    ),

                    /* TEXTE NOM */
                    const SizedBox(
                      height: 60,
                    ),
                    Container(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              Text("Nom  :",
                                  style: TextStyle(
                                    fontSize: sizer,
                                    color: const Color(0xff4EF194),
                                    fontWeight: FontWeight.bold,
                                  )),
                              const SizedBox(
                                width: 20,
                              ),
                              SizedBox(
                                width: 125,
                                height: 20,
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: const OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                      ),
                                      labelText: 'Nom ',
                                      labelStyle: TextStyle(
                                        fontSize: labels,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              Text("Prénom  :",
                                  style: TextStyle(
                                    color: const Color(0xff4EF194),
                                    fontSize: sizer,
                                    fontWeight: FontWeight.bold,
                                  )),
                              const SizedBox(
                                width: 20,
                              ),
                              SizedBox(
                                width: 125,
                                height: 20,
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: const OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                      ),
                                      labelText: 'Prenom ',
                                      labelStyle: TextStyle(
                                        fontSize: labels,
                                        color: Color.fromARGB(255, 0, 0, 0),
                                        fontWeight: FontWeight.bold,
                                      )),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              Text("Date de naissance  :",
                                  style: TextStyle(
                                    color: const Color(0xff4EF194),
                                    fontSize: sizer,
                                    fontWeight: FontWeight.bold,
                                  )),
                              const SizedBox(
                                width: 20,
                              ),
                              SizedBox(
                                width: 120,
                                height: 20,
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: const OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                      ),
                                      labelText: '20/12/1990 ',
                                      labelStyle: TextStyle(
                                        fontSize: labels,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ),
                              ),
                            ],
                          ),

                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              Text("Genre  :",
                                  style: TextStyle(
                                    color: const Color(0xff4EF194),
                                    fontSize: sizer,
                                    fontWeight: FontWeight.bold,
                                  )),
                              const SizedBox(
                                width: 20,
                              ),
                              DropdownButton<String>(
                                value: dropdownValue,
                                icon: const Icon(Icons.arrow_downward),
                                iconEnabledColor:
                                    const Color.fromARGB(255, 0, 0, 0),
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
                                items: list.map<DropdownMenuItem<String>>(
                                    (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(value),
                                  );
                                }).toList(),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              Text("Adresse mail   :",
                                  style: TextStyle(
                                    color: const Color(0xff4EF194),
                                    fontSize: sizer,
                                    fontWeight: FontWeight.bold,
                                  )),
                              const SizedBox(
                                width: 20,
                              ),
                              SizedBox(
                                width: 180,
                                height: 20,
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: const OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                      ),
                                      labelText: 'Adresse mail',
                                      labelStyle: TextStyle(
                                        fontSize: labels,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              Text("Mot de passe   :",
                                  style: TextStyle(
                                    color: const Color(0xff4EF194),
                                    fontSize: sizer,
                                    fontWeight: FontWeight.bold,
                                  )),
                              const SizedBox(
                                width: 20,
                              ),
                              SizedBox(
                                width: 180,
                                height: 20,
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: const OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                      ),
                                      labelText: 'Mot de passe',
                                      labelStyle: TextStyle(
                                        fontSize: labels,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              Text("Confirmer  :",
                                  style: TextStyle(
                                    color: const Color(0xff4EF194),
                                    fontSize: sizer,
                                    fontWeight: FontWeight.bold,
                                  )),
                              const SizedBox(
                                width: 20,
                              ),
                              SizedBox(
                                width: 180,
                                height: 20,
                                child: TextField(
                                  decoration: InputDecoration(
                                      border: const OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                      ),
                                      labelText: 'Mot de passe',
                                      labelStyle: TextStyle(
                                        fontSize: labels,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      )),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 110,
                          ),

                          // ...

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const SizedBox(width: 20),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ConnexionPage()),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  primary:
                                      const Color.fromARGB(255, 26, 149, 77),
                                  minimumSize: const Size(10, 30),
                                ),
                                child: const Text(
                                  'Retour',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 100),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ProfilPage()),
                                  );
                                },
                                style: ElevatedButton.styleFrom(
                                  primary:
                                      const Color.fromARGB(255, 26, 149, 77),
                                  minimumSize: const Size(10, 30),
                                ),
                                child: const Text(
                                  'Connexion',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                            ],
                          ),

// ...

                          /*SizedBox(
                      height: heightScreen / 8,
                    ),*/
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    )));
  }
}
