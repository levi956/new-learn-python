import 'package:flutter/material.dart';
import 'package:get/get.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text('Test Screen One'),
        ),
        body: Center(
          child: TextButton(
            onPressed: () => Get.back(),
            child: const Text('Press here to go back'),
          ),
        ),
      ),
    );
  }
}
