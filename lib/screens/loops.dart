import 'package:flutter/material.dart';
import 'package:new_learn_python/widgets/bold_text_head.dart';
import 'package:new_learn_python/widgets/code_text.dart';
import 'package:new_learn_python/widgets/custom_appbar.dart';
import 'package:new_learn_python/widgets/main_body_text.dart';

class Loops extends StatelessWidget {
  static const loop1 = '''
A for loop keywords acts as an iterator in Python, it goes through items that are in a sequence or any other iterable item.
''';

  static const code1 = '''
list1 = [1,2,3,4,5,6,7,8,9,10]
for num in list1:
    print(num)

#output
1
2
3
4
5
6
7
8
9
10

# you can add a condition over what you want to iterate over
for num in list1:
    if num % 2 == 0:
        print(num)

# output 
2
4
6
8
10
''';

  static const loop2 = '''
The while statement will repeatedly execute a single statement or group of statements as long as the condition is true until it becomes false.
''';

  static const code2 = '''
x = 0

while x < 5:
    print('x is currently: ',x)
    print(' x is still less than 10, adding 1 to x')
    x+=1

# output
x is currently:  0
 x is still less than 5, adding 1 to x
x is currently:  1
 x is still less than 5, adding 1 to x
x is currently:  2
 x is still less than 5, adding 1 to x
x is currently:  3
 x is still less than 5, adding 1 to x
x is currently:  4
 x is still less than 5, adding 1 to x
x is currently:  5

''';

  static const loop3 = '''
We can use break, continue, and pass statements in our loops to add additional functionality for various cases.
break: Breaks out of the current closest enclosing loop.
continue: Goes to the top of the closest enclosing loop.
pass: Does nothing at all.
''';

  static const code3 = '''
x = 0

while x < 5:
    print('x is currently: ',x)
    print(' x is still less than 10, adding 1 to x')
    x+=1
    if x==3:
        print('Breaking because x==3')
        break
    else:
        print('continuing...')
        continue

# output 
x is currently:  0
 x is still less than 5, adding 1 to x
continuing...
x is currently:  1
 x is still less than 5, adding 1 to x
continuing...
x is currently:  2
 x is still less than 5, adding 1 to x
Breaking because x==3
''';

  const Loops({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: const CustomAppbar(header: 'Python Loops'),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(left: 12, right: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                BoldTextHead(boldHead: 'the for statement'),
                MainText(mainText: loop1),
                CodeText(codeText: code1),
                BoldTextHead(boldHead: 'the while statement'),
                MainText(mainText: loop2),
                CodeText(codeText: code2),
                BoldTextHead(boldHead: 'break, pass and continue statement'),
                MainText(mainText: loop3),
                CodeText(codeText: code3),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
