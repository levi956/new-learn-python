import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/dracula.dart';

class CodeText extends StatelessWidget {
  final String codeText;
  const CodeText({Key? key, required this.codeText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HighlightView(
      codeText,
      language: 'python',
      padding: const EdgeInsets.all(10),
      theme: draculaTheme,
      textStyle: const TextStyle(
        fontFamily: 'Poppins',
        fontSize: 12,
      ),
    );
  }
}
