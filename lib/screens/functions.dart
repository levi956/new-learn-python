import 'package:flutter/material.dart';
import 'package:new_learn_python/widgets/bold_text_head.dart';
import 'package:new_learn_python/widgets/code_text.dart';
import 'package:new_learn_python/widgets/custom_appbar.dart';
import 'package:new_learn_python/widgets/main_body_text.dart';

class Functions extends StatelessWidget {
  static const func1 = '''
Simply put, a function is a unit of reusable code.
You can pass data, known as parameters, into a function.
''';

  static const func2 = '''
A function is created by using the 'def' keyword,
Then the name of the function(varible naming convention)
Then it is closed off with a '()' and  ':'.
To call a function, use the function name followed by a parenthesis.
''';

  static const code1 = '''
def my_function():
    print('Hello from a function')

my_function()   # calling the function
''';

  static const func3 = '''
Information can be passed into functions as arguments.
Arguments are specified after a the function name, inside the parentheses. You can add as many arguments as you want, just seperate them with a comma.
''';

  static const code2 = '''
def greeting(name):
    print(f'Hello {name}')

greeting('John')
John    # output
''';

  const Functions({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: const CustomAppbar(header: 'Functions'),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(left: 12, right: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                MainText(mainText: func1),
                BoldTextHead(boldHead: 'Creating a function in Python'),
                MainText(mainText: func2),
                CodeText(codeText: code1),
                MainText(mainText: func3),
                CodeText(codeText: code2),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
