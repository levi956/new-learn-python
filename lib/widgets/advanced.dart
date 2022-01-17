// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:new_learn_python/models/advanced_model.dart';
import 'package:get/get.dart';

class Advanced extends StatelessWidget {
  const Advanced({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: 120,
        child: GridView.builder(
          itemCount: advancedCategoryData.length,
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            mainAxisSpacing: 15,
          ),
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                switch (index) {
                  case 0:
                    Get.toNamed('/oop');
                    break;

                  case 1:
                    Get.toNamed('/sorting');
                    break;

                  case 2:
                    Get.toNamed('/error');
                    break;

                  default:
                    print("Invalid index");
                    break;
                }
              },
              child: SizedBox(
                height: 100,
                child: Image(
                  image: AssetImage(advanced[index].image!),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
