// ignore_for_file: unnecessary_string_escapes

import 'package:flutter/material.dart';
import 'package:new_learn_python/widgets/bold_text_head.dart';
import 'package:new_learn_python/widgets/code_text.dart';
import 'package:new_learn_python/widgets/custom_appbar.dart';
import 'package:new_learn_python/widgets/main_body_text.dart';

class DataType extends StatelessWidget {
  static const theText = '''
In Python, variables can store data of different types, and different types can do different things. 
Python has the following data types built-in by default, in these categories:

- Text Type: str
- Numeric Type: int, float, complex
- Sequence Types: list, tuple, range
- Mapping Type: dict
- Set Types: set, forzenset
- Boolean Type: bool
- Binary Types: bytes, bytearray, memoryview

You can get the data type of any object by using the type() function.
''';

  static const code1 = '''
name  = 'John'     # Text type String
age = 20           # Numeric type age
vowels = ['a','e','i','o','u']     # Sequence type List 
name_of_cars = ('Toyota', 'Mercedes', 'Porshe')  # Sequence type tuple
a_set = (1,2,3,4)         # Set type sets
the_colors = {1: 'blue', 2: 'red', 3: 'green'} # Mapping type dict
is_found = true   # Boolean type bool
''';

  static const theString = '''
A string simply stores text. A string is a group of characters of UTF-16 code units. You can create a string using single or double quotes(as long as they are the same as the beginning and end of the string). 
Since strings start with quotes, what if you want to put a quote inside your string, you use the escape character '\''.
''';

  static const code2 = '''
sentence = 'It\'s his birthday today'
''';

  static const theNumerical = '''
Integers are whole positive or negative numbers with no decimal used to perform arithmetic operations.
Longs are integers of unlimited size, written like integers and followed by an uppercase or lowercase L.
Doubles are numbers which don't have to be whole numbers meaning they can contain decimal points.
Floats, they represent real numbers and are written with a decimal point dividing the integer and fractional parts.
''';

  static const code3 = '''
point = 12.3     # Doubles
point2 = 23.436363   #floats
max_streams = 3424752375236253L    # long
''';

  static const theSequence = '''
A sequence is an ordered collection of similar or different data types.
To know more about Lists, check the intermediate categories in the home page.
To know more about dictionaries, check the intermediate categories in the home page.
''';
  static const theSets = '''
A set is an unordered collection of items. Every element in a set is unique(no duplicates) and must be immutable(cannot be changed).
''';

  static const theBoolean = '''
A boolean simply sets a condtion to be either true of false. 
''';

  const DataType({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: const CustomAppbar(header: 'Python Data Types'),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(left: 12, right: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                MainText(mainText: theText),
                CodeText(codeText: code1),
                BoldTextHead(boldHead: 'Strings'),
                MainText(mainText: theString),
                CodeText(codeText: code2),
                BoldTextHead(boldHead: 'Integers'),
                MainText(mainText: theNumerical),
                CodeText(codeText: code3),
                BoldTextHead(boldHead: 'Sequence Types'),
                MainText(mainText: theSequence),
                BoldTextHead(boldHead: 'Sets'),
                MainText(mainText: theSets),
                BoldTextHead(boldHead: 'Booleans'),
                MainText(mainText: theBoolean),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
