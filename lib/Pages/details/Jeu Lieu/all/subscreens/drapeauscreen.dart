import 'package:flutter/material.dart';

class DrapeauScreen extends StatefulWidget {
  final String imageUrl;

  DrapeauScreen({Key? key, required this.imageUrl}) : super(key: key);

  @override
  State<DrapeauScreen> createState() => DrapeauScreenState();
}

class DrapeauScreenState extends State<DrapeauScreen> {
  Offset _offset = Offset.zero;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 380,
      width: 420,
      child: InteractiveViewer(
        boundaryMargin: EdgeInsets.all(10),
        minScale: 2,
        maxScale: 4.0,
        child: Container(
          // Limitez la largeur maximale de l'image à 600 pixels
          child: Image.asset(
            widget
                .imageUrl, // Utilisez widget.imageUrl pour accéder à la propriété
            height: 150,
            width: 150,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
