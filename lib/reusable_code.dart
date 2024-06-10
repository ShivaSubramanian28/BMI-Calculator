import 'package:flutter/material.dart';
class contain extends StatelessWidget {
  contain({required this.colour, required this.cardType});
  final Color colour;
  final Widget cardType;
  @override
  Widget build(BuildContext context) {
    return Container(
        child: cardType,
        height: 240.0,
        width: 170.0,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10),
        ),
      );
  }
}


