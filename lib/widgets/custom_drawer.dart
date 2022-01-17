import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        canvasColor: Colors.black,
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
        child: Drawer(
          child: ListView(
            scrollDirection: Axis.vertical,
            padding: EdgeInsets.zero,
            children: <Widget>[
              const DrawerHeader(
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  image: DecorationImage(
                    image: AssetImage('assets/images/playstore.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: null,
              ),
              ListTile(
                leading: const Icon(
                  Icons.policy,
                  color: Colors.white,
                ),
                title: const Text(
                  'Privacy Policy',
                  style: TextStyle(
                      fontFamily: 'Poppins', fontSize: 14, color: Colors.white),
                ),
                onTap: () {
                  print('');
                },
              ),
              ListTile(
                leading:
                    const Icon(Icons.file_copy_outlined, color: Colors.white),
                title: const Text(
                  'Terms and Conditions',
                  style: TextStyle(
                      fontFamily: 'Poppins', fontSize: 14, color: Colors.white),
                ),
                onTap: () {
                  print('');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
