import 'package:flutter/material.dart';
import 'package:new_learn_python/widgets/bold_text_head.dart';
import 'package:new_learn_python/widgets/code_text.dart';
import 'package:new_learn_python/widgets/custom_appbar.dart';
import 'package:new_learn_python/widgets/main_body_text.dart';

class Lists extends StatelessWidget {
  static const list1 = '''
Lists are used to store multiple items in a single variable.
List items are ordered, changable(mutable) and allow duplicate values.
the len() function tells you how many items are in the sequence of the list.
''';

  static const code1 = '''
my_list = ['a', 'b', 23, 25]
len(my_list)

# output 
4
''';

  static const list2 = '''
Indexing and slicing are used to access the list tems and grab part of the list items.
Note: Indexing in Python always starts from 0 not 1.
Also to grab the last element in a list, you use a negative index [-1].

''';

  static const code2 = '''
name_list = ['John', 'Doe', 'Jack', 'Daen']
print(name_list[1])
# output
Doe

# [0] == John
# [1] == Doe
# [2] == Jack
# [3] == Daen

# [-1] = Daen

# Grabs index 1 and everything past it.
name_list[1:]

# output
['Doe', 'Jack', 'Daen']

# Grabs everything up to index 3
name_list[:3]

# output
[''John, 'Doe', 'Jack',]
''';

  static const list3 = '''
Python offers some basic methods for lists.
Below are some basic list methods.
''';

  static const code3 = '''
list_num = [1,2,3]
# Append
list_num.append('append me')
print(list_num)

# output
[1,2,3, 'append me']
''';

  static const pop = '''
Use pop to 'pop off' an item from the list. By default pop takes off the last index, but you can also specify which index to pop off.
''';
  static const code4 = '''
my_list = [1,2,3]
my_list.pop(0)
print(my_list)

# output
[2,3]
''';

  static const reverse = '''
We can use the sort method and reverse methods to make an effect on your list.
''';

  static const codereverse = '''
new_list = ['a','e','x','b','c']
new_list.sort()
new_list.reverse()  # this is permanent

# output
['a','b','c','e','x']
['x','e','c','b','a']
''';

  const Lists({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: const CustomAppbar(header: 'Python Lists'),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(left: 12, right: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                MainText(mainText: list1),
                CodeText(codeText: code1),
                BoldTextHead(boldHead: 'Indexing and Slicing'),
                MainText(mainText: list2),
                CodeText(codeText: code2),
                BoldTextHead(boldHead: 'Append and Pop'),
                MainText(mainText: list3),
                CodeText(codeText: code3),
                MainText(mainText: pop),
                CodeText(codeText: code4),
                BoldTextHead(boldHead: 'Reverse and Sort'),
                MainText(mainText: reverse),
                CodeText(codeText: codereverse),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
