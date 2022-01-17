import 'package:flutter/material.dart';
import 'package:new_learn_python/widgets/code_text.dart';
import 'package:new_learn_python/widgets/custom_appbar.dart';
import 'package:new_learn_python/widgets/main_body_text.dart';

class Operations extends StatelessWidget {
  static const code = '''
# Addition
5+5     //10

# Subtraction
10-5    //5

# Multiplication
5*3     //15

# Division
3/2     //1.5

# Floor Division
# dividing with no remainder only an int result
7//4   //1

# Modulo
# returning only the remainder 
7%4    //3

# Powers
2**3   //8

# note that python follows Order of Operation, hence
2 + 10 * 10 + 3   //105

(2+10) * (10+3)   //156

# increment
1++      //2

# decrement
2--      //1

# equal
2 == 2   #returns a boolean

# not equal to
2 != 2   #returns a boolean

# greater than
2 > 1    #returns a boolean

# less than
2 < 1    # returns a boolean

# greater than or equal to
2 >= 1   #returns a boolean

# less than or equal to
2 <= 1   #returns a boolean
''';

  static const introText =
      'Arithmetic Operations are used to perform common mathematical operations. Comparison operation sare used to compare different values.';

  const Operations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: const CustomAppbar(header: 'Arithmetic Operators'),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(left: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                MainText(mainText: introText),
                CodeText(codeText: code),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
