import 'package:flutter/material.dart';

class MainText extends StatelessWidget {
  final String mainText;
  const MainText({Key? key, required this.mainText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      mainText,
      style: const TextStyle(
          fontFamily: 'Poppins', fontSize: 14, color: Colors.white),
    );
  }
}
