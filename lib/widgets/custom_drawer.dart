import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  static const _privacy_url =
      'https://github.com/levi956/Learn-Python-Offline-Guide/blob/main/privacy.md';
  static const _terms_url =
      'https://github.com/levi956/Learn-Python-Offline-Guide/blob/main/terms%26conditions.md';

  void _launchURL() async => await canLaunch(_privacy_url)
      ? await launch(_privacy_url)
      : throw 'Could not launch $_privacy_url';

  void _launchURLTwo() async => await canLaunch(_terms_url)
      ? await launch(_terms_url)
      : throw 'Could not launch $_terms_url';

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
                onTap: () => (_launchURL()),
              ),
              ListTile(
                leading:
                    const Icon(Icons.file_copy_outlined, color: Colors.white),
                title: const Text(
                  'Terms and Conditions',
                  style: TextStyle(
                      fontFamily: 'Poppins', fontSize: 14, color: Colors.white),
                ),
                onTap: () => (_launchURLTwo()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
