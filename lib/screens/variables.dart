import 'package:flutter/material.dart';
import 'package:new_learn_python/widgets/bold_text_head.dart';
import 'package:new_learn_python/widgets/code_text.dart';
import 'package:new_learn_python/widgets/custom_appbar.dart';
import 'package:new_learn_python/widgets/main_body_text.dart';

class Variables extends StatelessWidget {
  static const code = '''
# variable assignment
a = 10    # assigning int 10 to variable a
name = 'Nifesi'   # assigning String 'Nifesi' to variable name
print(name)
type(name)    # type() used for to check what type of object assigned to a variable
type(int) 
  ''';

  static const okay = '''
  - names can not start with a number
  - names can not contain spaces, use _ intead
  - avoid using Python built-in keywords like list and str
  - it's considered best practice (PEP8) that names are lowercase with underscores
  - avoid using the single characters l (lowercase letter el), O (uppercase letter oh) and I (uppercase letter eye) as they can be confused with 1 and 0
  ''';

  static const introText =
      'A variable in Python is simply a reserved memory location to store values. In other words, a variable in python program gives data to the computer for processing.';

  const Variables({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: const CustomAppbar(header: 'Variables'),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(left: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                MainText(mainText: introText),
                BoldTextHead(boldHead: 'Rules for naming variables in Python'),
                MainText(mainText: okay),
                SizedBox(
                  height: 10,
                ),
                CodeText(codeText: code),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
