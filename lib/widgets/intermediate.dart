// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_learn_python/models/intermediate_model.dart';

class Intermediate extends StatelessWidget {
  const Intermediate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        height: 120,
        child: GridView.builder(
          itemCount: intermediateCategoryData.length,
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
                    Get.toNamed('/functions');
                    break;

                  case 1:
                    Get.toNamed('/keywords');
                    break;

                  case 2:
                    Get.toNamed('/lists');
                    break;

                  case 3:
                    Get.toNamed('/loops');
                    break;

                  case 4:
                    Get.toNamed('/dictionaries');
                    break;

                  case 5:
                    Get.toNamed('/strings');
                    break;

                  default:
                    print("Invalid index");
                    break;
                }
              },
              child: SizedBox(
                height: 100,
                child: Image(
                  image: AssetImage(intermediate[index].image!),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
