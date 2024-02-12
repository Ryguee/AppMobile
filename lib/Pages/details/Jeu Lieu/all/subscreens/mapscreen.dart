import 'package:flutter/material.dart';

class MapScreen extends StatefulWidget {
  final String imageUrl;

  MapScreen({Key? key, required this.imageUrl}) : super(key: key);

  @override
  State<MapScreen> createState() => MapScreenState();
}

class MapScreenState extends State<MapScreen> {
  Offset _offset = Offset.zero;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 330,
      width: 420,
      child: InteractiveViewer(
        boundaryMargin: EdgeInsets.all(10),
        minScale: 2,
        maxScale: 4.0,
        child: Container(
          // Limitez la largeur maximale de l'image à 600 pixels

          child: Image.asset(
            height: 330,
            width: 250,
            widget.imageUrl,
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
