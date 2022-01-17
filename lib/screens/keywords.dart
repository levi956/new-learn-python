import 'package:flutter/material.dart';
import 'package:new_learn_python/widgets/bold_text_head.dart';
import 'package:new_learn_python/widgets/code_text.dart';
import 'package:new_learn_python/widgets/custom_appbar.dart';
import 'package:new_learn_python/widgets/main_body_text.dart';

class Keywords extends StatelessWidget {
  static const key1 = '''
Python has a set of keywords that are reserved words that cannot be used in naming variables, function names or any other identifiers.
Below is a list of useful keywords and description below.
''';

  static const code1 = '''
and      # a logical operator
as       # to create an alias 
assert   # for debugging purposes
break    # to break out of a loop
class    # to define a class
continue # to continue to the next iteration of a loop
def      # to define a function
del      # to delete an object
elif     # used in conditional statements, same as else if
else     # used in conditional statements
except   # used for exceptions, what to do when an exception occurs
False    # boolean value
finally  # used with exceptions, a block of code executes here no matter an exception or not
for      # to create a for loop
from     # to import specific parts of a module
global   # to declare a global variable
if       # used to make an conditional statement
in       # to check whether a value is present in a list
is       # to test if two variables are equal
lambda   # to create an anonymous function
None     # represents a null value
nonlocal # to declare a non local variable
not      # a logical operator
or       # a logical operator
pass     # a null statement, a statement that deos nothing
raise    # to create an exception
True     # to exit a function, result of comparison operations
try      # to make a try... except statement
while    # to create a while loop
with     # used to simplify execution handling
yield    # to end a function, returns a generator
''';

  const Keywords({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: const CustomAppbar(header: 'Python Keywords'),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(left: 12, right: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                MainText(mainText: key1),
                BoldTextHead(boldHead: 'Basic Python Keywords'),
                CodeText(codeText: code1),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
