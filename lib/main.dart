import 'package:flutter/material.dart';
import 'package:flutter_application_1/Pages/home/home.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Jeuographie',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
