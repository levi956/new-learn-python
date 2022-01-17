import 'package:flutter/material.dart';
import 'package:new_learn_python/widgets/bold_text_head.dart';
import 'package:new_learn_python/widgets/code_text.dart';
import 'package:new_learn_python/widgets/custom_appbar.dart';
import 'package:new_learn_python/widgets/main_body_text.dart';

class ErrorExcept extends StatelessWidget {
  static const err1 = '''
You've definitely already encountered errors when coding in Python, it's only natural. For example,
''';
  static const code1 = '''
print('Hello)

# output 
File "<ipython-input-1-db8c9988558c>", line 1
    print('Hello)
                 ^
SyntaxError: EOL while scanning string literal
''';

  static const err2 = '''
Note how we get a SyntaxError, with the further description that it was an EOL (End of Line Error) while scanning the string literal. This is specific enough for us to see that we forgot a single quote at the end of the line. Understanding these various error types will help you debug your code much faster.

This type of error and description is known as an Exception. Even if a statement or expression is syntactically correct, it may cause an error when an attempt is made to execute it. Errors detected during execution are called exceptions and are not unconditionally fatal.
''';

  static const err3 = '''
The basic terminology and syntax used to handle errors in Python are the try and except statements. The code which can cause an exception to occur is put in the try block and the handling of the exception is then implemented in the except block of code. The syntax follows:
''';

  static const code3 = '''
try:
   You do your operations here...
   ...
except ExceptionI:
   If there is ExceptionI, then execute this block.
except ExceptionII:
   If there is ExceptionII, then execute this block.
   ...
else:
   If there is no exception then execute this block.


try:
     a = int(input("Enter a positive integer: "))
     if a <= 0:
         raise ValueError("That is not a positive number!")
 except ValueError as ve:
     print(ve)

# output
Enter a positive integer: -2
That is not a positive number!


# In some situations, you might want to run a certain block of code if the code block inside try ran without any errors. For these cases, you can use the optional else keyword with the try statement.
# program to print the reciprocal of even numbers

try:
    num = int(input("Enter a number: "))
    assert num % 2 == 0
except:
    print("Not an even number!")
else:
    reciprocal = 1/num
    print(reciprocal)
# output
# passing an odd number
Enter a number: 1
Not an even number!

# passing an even number
Enter a number: 4
0.25

# However, if we pass 0, we get ZeroDivisionError as the code block inside else is not handled by preceding except.
Enter a number: 0
Traceback (most recent call last):
  File "<string>", line 7, in <module>
    reciprocal = 1/num
ZeroDivisionError: division by zero
''';

  static const err4 = '''
The finally: block of code will always be run regardless if there was an exception in the try code block. The syntax is:
''';
  static const code4 = '''
try:
   Code block here
   ...
   Due to any exception, this code may be skipped!
finally:
   This code block would always be executed.

# Example:
try:
    f = open("testfile", "w")
    f.write("Test write statement")
    f.close()
finally:
    print("Always execute finally code blocks")

# output
Always execute finally code blocks
''';

  const ErrorExcept({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: const CustomAppbar(header: 'Errors and Exceptions in Python'),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(left: 12, right: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                MainText(mainText: err1),
                CodeText(codeText: code1),
                MainText(mainText: err2),
                BoldTextHead(boldHead: 'Try and Except'),
                MainText(mainText: err3),
                CodeText(codeText: code3),
                BoldTextHead(boldHead: 'Finally keyword'),
                MainText(mainText: err4),
                CodeText(codeText: code4),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
