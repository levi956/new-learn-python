import 'package:flutter/material.dart';
import 'package:new_learn_python/widgets/bold_text_head.dart';
import 'package:new_learn_python/widgets/code_text.dart';
import 'package:new_learn_python/widgets/custom_appbar.dart';
import 'package:new_learn_python/widgets/main_body_text.dart';

class ControlFlow extends StatelessWidget {
  static const control1 = '''
Control Flow in python is the order in which the program's codes executes. The control flow of a Python program is regulated by
conditional statements, loops and functions calls. Go to the Loops in the intermediate category to read on Loops.
''';

  static const control2 = '''
The 'if' statement in Python allows us to tell the program to perform a particular action/function if a condition is satisfied.
The 'elif' statement is an addition to the 'if' statement in Python that if another condition is satisfied, perfom this action.
The 'else' statement is when none of the conditions are satisfied, then the program should perform this action.
''';

  static const code1 = '''
if case1:
    perform action1
elif case2:
    perform action2
else: 
    perform action3
''';

  const ControlFlow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: const CustomAppbar(header: 'Python Control Flow'),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(left: 12, right: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                MainText(mainText: control1),
                BoldTextHead(boldHead: 'If, Else and Elif Keywords'),
                MainText(mainText: control2),
                CodeText(codeText: code1)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
