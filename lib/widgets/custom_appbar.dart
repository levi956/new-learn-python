import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => const Size.fromHeight(50);
  final String header;
  const CustomAppbar({Key? key, required this.header}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        header,
        style: const TextStyle(fontFamily: 'Poppins', color: Colors.white),
      ),
      backgroundColor: Colors.transparent,
      leading: IconButton(
        onPressed: () {
          Get.back();
        },
        icon: const Icon(
          Icons.arrow_back,
          size: 20,
          color: Colors.white,
        ),
      ),
    );
  }
}
