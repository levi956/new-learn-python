import 'package:get/get.dart';
import 'package:new_learn_python/screens/control_flow.dart';
import 'package:new_learn_python/screens/data_type.dart';
import 'package:new_learn_python/screens/dictionaries.dart';
import 'package:new_learn_python/screens/error_except.dart';
import 'package:new_learn_python/screens/functions.dart';
import 'package:new_learn_python/screens/home_screen.dart';
import 'package:new_learn_python/screens/intro.dart';
import 'package:new_learn_python/screens/keywords.dart';
import 'package:new_learn_python/screens/lists.dart';
import 'package:new_learn_python/screens/loops.dart';
import 'package:new_learn_python/screens/oop.dart';
import 'package:new_learn_python/screens/operators.dart';
import 'package:new_learn_python/screens/sorting_algo.dart';
import 'package:new_learn_python/screens/strings.dart';
import 'package:new_learn_python/screens/test_screen.dart';
import 'package:new_learn_python/screens/variables.dart';

class Routes {
  static final routes = [
    GetPage(name: '/testScreen', page: () => const TestScreen()),
    GetPage(name: '/home', page: () => Home()),
    GetPage(name: '/keywords', page: () => const Keywords()),
    GetPage(name: '/intro', page: () => const Intro()),
    GetPage(name: '/variables', page: () => const Variables()),
    GetPage(name: '/operators', page: () => const Operations()),
    GetPage(name: '/dataType', page: () => const DataType()),
    GetPage(name: '/controlFlow', page: () => const ControlFlow()),
    GetPage(name: '/functions', page: () => const Functions()),
    GetPage(name: '/lists', page: () => const Lists()),
    GetPage(name: '/dictionaries', page: () => const Dictionaries()),
    GetPage(name: '/strings', page: () => const Strings()),
    GetPage(name: '/loops', page: () => const Loops()),
    GetPage(name: '/sorting', page: () => const SortingAlgo()),
    GetPage(name: '/oop', page: () => const ObjectOriented()),
    GetPage(name: '/error', page: () => const ErrorExcept()),
    // initial route
  ];
}
