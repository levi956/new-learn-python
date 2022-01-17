import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controllers/routes.dart';

/*
To do
-- figured out how to just list through builders with a class using null safety fix
HENCE:
- implement switch statement in conditional routing in categories
- clean code and make codebase updated and efficient with flutter new lints
- arrange logic in the application for more effiecient and readable code
- think about implementations of new features and approach to implement


*/

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'new learn python app',
      getPages: Routes.routes,
      initialRoute: '/home',
    );
  }
}
