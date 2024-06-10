import 'package:flutter/material.dart';
import 'constants.dart';
class content extends StatelessWidget {
  @override
  content(
      {required this.text,
        required this.image,required this.textmodification});
  final String text;
  final IconData image;
  final TextStyle textmodification;

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          image,
          size: kimageSize,
          color: kiconColor,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          text,
          style:  textmodification,
        )
      ],
    );
  }
}