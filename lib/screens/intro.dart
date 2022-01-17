import 'package:flutter/material.dart';
import 'package:new_learn_python/widgets/bold_text_head.dart';
import 'package:new_learn_python/widgets/custom_appbar.dart';
import 'package:new_learn_python/widgets/main_body_text.dart';

class Intro extends StatelessWidget {
  static const String python = '''
Python is an object oriented high-level programming language. First launched in 1992, it's built in a way that
is relatively intuitive to write and easy ti understand. As such, it's an ideal language for those that want rapid development.
If you're wondering who uses python, many of the biggest organisations in thw world implement it in some form. NASA, Google, Netflix, and countless others
more all use the language to help power their services.
''';

  static const String python2 = '''
Some reasons to learn python are:
- Python Developers are in demand. Across a wide range of fields, there is a demand for those with Python skills.
- It could lead to a well-paid career. Data suggests that the annual salary of Python developers is around \$70,000 in the US.
- There are job opportunities. Python can be used in many emerging technologies such as AI, machine learning and data analytics.

''';

  static const String python3 = '''
Clearly, Python is a popular and in-demand skill to learn. But what is python programming language used for?
''';

  static const String ai = '''
Because Python is such a stable, flexible, and simple programming language, it’s perfect for various machine learning (ML) and artificial intelligence (AI) projects. In fact, Python is among the favourite languages among data scientists, and there are many Python machine learning and AI libraries and packages available. 

If you’re interested in this application of Python, our Deep Learning and Python Programming for AI with Microsoft Azure ExpertTrack can help you develop your skills in these areas. You can discover the uses of Python and deep learning while boosting your career in AI.
''';

  static const String dataAnalysis = '''
Much like AI and machine learning, data analytics is another rapidly developing field that utilises Python programming. At a time when we’re creating more data than ever before, there is a need for those who can collect, manipulate and organise the information. 

Python for data science and analytics makes sense. The language is easy-to-learn, flexible, and well-supported, meaning it’s relatively quick and easy to use for analysing data. When working with large amounts of information, it’s useful for manipulating data and carrying out repetitive tasks.
''';

  static const String dataVisual = '''
Data visualisation is another popular and developing area of interest. Again, it plays into many of the strengths of Python. As well as its flexibility and the fact it’s open-source, Python provides a variety of graphing libraries with all kinds of features. 

Whether you’re looking to create a simple graphical representation or a more interactive plot, you can find a library to match your needs. Examples include Pandas Visualization and Plotly. The possibilities are vast, allowing you to transform data into meaningful insights.
''';

  static const String promApp = '''
You can program all kinds of applications using Python. The general-purpose language can be used to read and create file directories, create GUIs and APIs, and more. Whether it’s blockchain applications, audio and video apps, or machine learning applications, you can build them all with Python. 
''';

  static const String webDev = '''
Python is a great choice for web development. This is largely due to the fact that there are many Python web development frameworks to choose from, such as Django, Pyramid, and Flask. These frameworks have been used to create sites and services such as Spotify, Reddit and Mozilla. 

Thanks to the extensive libraries and modules that come with Python frameworks, functions such as database access, content management, and data authorisation are all possible and easily accessible. Given its versatility, it’s hardly surprising that Python is so widely used in web development.
''';

  static const String gameDev = '''
Although far from an industry-standard in game development, Python does have its uses in the industry. It’s possible to create simple games using the programming language, which means it can be a useful tool for quickly developing a prototype. Similarly, certain functions (such as dialogue tree creation) are possible in Python. 
''';

  const Intro({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: const CustomAppbar(header: 'Introduction to Python'),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(left: 12, right: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const <Widget>[
                MainText(mainText: python),
                BoldTextHead(boldHead: 'Reasons to Learn Python'),
                MainText(mainText: python2),
                BoldTextHead(boldHead: 'What Python can be used for'),
                MainText(mainText: python3),
                BoldTextHead(boldHead: 'Artificial Intelligence'),
                MainText(mainText: ai),
                BoldTextHead(boldHead: 'Data Analytics'),
                MainText(mainText: dataAnalysis),
                BoldTextHead(boldHead: 'Data Visualization'),
                MainText(mainText: dataVisual),
                BoldTextHead(boldHead: 'Application Development'),
                MainText(mainText: promApp),
                BoldTextHead(boldHead: 'Web Development'),
                MainText(mainText: webDev),
                BoldTextHead(boldHead: 'Game Development'),
                MainText(mainText: gameDev),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
