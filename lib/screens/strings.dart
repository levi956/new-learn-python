import 'package:flutter/material.dart';
import 'package:new_learn_python/widgets/bold_text_head.dart';
import 'package:new_learn_python/widgets/code_text.dart';
import 'package:new_learn_python/widgets/custom_appbar.dart';
import 'package:new_learn_python/widgets/main_body_text.dart';

class Strings extends StatelessWidget {
  static const str1 = '''
Strings are used in Python to record text information, such as names. Strings in Python are actually a sequence, which basically means Python keeps track of every element in the string as a sequence. For example, Python understands the string "hello' to be a sequence of letters in a specific order. This means we will be able to use indexing to grab particular letters (like the first letter, or the last letter).
Strings are immutable. Strings can be concatenated.
''';

  static const code1 = '''
sentence1 = 'String with single quote'
sentence2 = "String with double quote"

# we can only use len() to get the number of elements in a string
# note: white spaces also count
len(sentence1)
# output
24

we can also index and slice strings 
sentence1[0]
sentence[1:]

# output
'S'
'tring with single quote'
''';

  static const code2 = '''
name = 'John'
# Upper case a string and lower case a string
name.upper()
name.lower()

# output
'JOHN'
'john'

# Split a string by blank space
sentence2 = 'Hello World'
sentence2.split()

# output
['Hello', 'World']
''';

  const Strings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: const CustomAppbar(header: 'Strings in Python'),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(left: 12, right: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                MainText(mainText: str1),
                CodeText(codeText: code1),
                BoldTextHead(boldHead: 'Some String Methods'),
                CodeText(codeText: code2)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
