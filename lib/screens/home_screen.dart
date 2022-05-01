import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:new_learn_python/widgets/advanced.dart';
import 'package:new_learn_python/widgets/basics.dart';
import 'package:new_learn_python/widgets/custom_drawer.dart';
import 'package:new_learn_python/widgets/intermediate.dart';
import 'package:new_learn_python/widgets/topic_text_widget.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    const String intro = 'Introduction to Python';
    const String subIntro =
        'A quick guide that contains the key concepts on what the Python programming language is and it\'s core syntax.';
    return SafeArea(
      bottom: false,
      top: false,
      child: Scaffold(
        key: scaffoldKey,
        drawer: const CustomDrawer(),
        backgroundColor: Colors.black,
        appBar: AppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.light,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.settings,
              size: 20,
              color: Colors.white,
            ),
            onPressed: () {
              scaffoldKey.currentState!.openDrawer();
            },
          ),
        ),
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.height * 0.50,
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.blue[900],
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.15,
                        child: const Image(
                          image: AssetImage(
                            'assets/images/pythonlogo.png',
                          ),
                        ),
                      ),
                      const Text(
                        intro,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                            fontFamily: 'Poppins'),
                      ),
                      const Text(
                        subIntro,
                        style: TextStyle(
                            fontSize: 13,
                            color: Colors.white,
                            fontFamily: 'Poppins'),
                      ),
                    ],
                  ),
                ),
              ),
              const SubHeadText(subHead: 'Beginner'),
              const Basics(),
              const SubHeadText(subHead: 'Intermediate'),
              const Intermediate(),
              const SubHeadText(subHead: 'Advanced'),
              const Advanced(),
            ],
          ),
        ),
      ),
    );
  }
}
