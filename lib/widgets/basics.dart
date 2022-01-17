// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:new_learn_python/models/basics_model.dart';
import 'package:get/get.dart';

class Basics extends StatelessWidget {
  const Basics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: 120,
        child: GridView.builder(
          itemCount: basicCategoryData.length,
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
                    Get.toNamed('/intro');
                    break;

                  case 1:
                    Get.toNamed('/variables');
                    break;

                  case 2:
                    Get.toNamed('/operators');
                    break;

                  case 3:
                    Get.toNamed('/dataType');
                    break;

                  case 4:
                    Get.toNamed('/controlFlow');
                    break;

                  default:
                    print("Invalid index");
                    break;
                }
              },
              child: SizedBox(
                height: 100,
                child: Image(
                  image: AssetImage(basics[index].image!),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
