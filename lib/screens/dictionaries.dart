import 'package:flutter/material.dart';
import 'package:new_learn_python/widgets/bold_text_head.dart';
import 'package:new_learn_python/widgets/code_text.dart';
import 'package:new_learn_python/widgets/custom_appbar.dart';
import 'package:new_learn_python/widgets/main_body_text.dart';

class Dictionaries extends StatelessWidget {
  static const dict1 = '''
Mappings are a collection of objects that are stored by a key, unlike a sequence that stored objects by their relative position. This is an important distinction, since mappings won't retain order since they have objects defined by a key.
Dictionaries are used to store data values in key:value pairs.

A dictionary is a collection which is ordered, changeable and does not allow duplicates.
A Python dictionary consists of a key and then an associated value. That value can be almost any Python object.
''';

  static const code1 = '''
# Make a dictionary with {} and : to signify a key and a value
my_dict = {'key1':'value1','key2':'value2'}

# Call values by their key
my_dict['key2']
# output
'value2'


my_dict = {'key1':123,'key2':[12,23,33],'key3':['item0','item1','item2']}

# Let's call items from the dictionary
my_dict['key3']
# output
['item0', 'item1', 'item2']

# Can call an index on that value
my_dict['key3'][0]
# output
'item0'
''';

  const Dictionaries({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: const CustomAppbar(header: 'Dictionaries in Python'),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(left: 12, right: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                MainText(mainText: dict1),
                BoldTextHead(boldHead: 'Dictionaries Operations'),
                CodeText(codeText: code1)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
