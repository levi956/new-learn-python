import 'package:flutter/material.dart';

class SubHeadText extends StatelessWidget {
  final String subHead;
  const SubHeadText({Key? key, required this.subHead}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10, top: 25, bottom: 25),
      child: Text(
        subHead,
        style: const TextStyle(
            color: Colors.white, fontSize: 17, fontFamily: 'Poppins'),
      ),
    );
  }
}
