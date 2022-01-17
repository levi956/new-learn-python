import 'package:flutter/material.dart';

class BoldTextHead extends StatelessWidget {
  final String boldHead;
  const BoldTextHead({Key? key, required this.boldHead}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      child: Text(
        boldHead,
        style: const TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            fontSize: 19,
            color: Colors.white),
      ),
    );
  }
}
