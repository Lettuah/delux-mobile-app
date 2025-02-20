import 'package:delux/routes.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: const BoxDecoration(),
            child: Image.asset('assets/img/logo1.png', height: 150),
          ),
          ListTile(
            leading: const Icon(FontAwesomeIcons.house, color: Colors.white),
            title: const Text('Home', style: TextStyle(color: Colors.white)),
            onTap: () {
              Get.toNamed(AppRoutes.splash);
            },
          ),
          ListTile(
            leading: const Icon(
              FontAwesomeIcons.circleInfo,
              color: Colors.white,
            ),
            title: const Text(
              'Learn More',
              style: TextStyle(color: Colors.white),
            ),
            onTap: () => Navigator.pop(context),
          ),

          const SizedBox(
            height: 550,
          ), // Adjust height as needed to push content up
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                '© ${DateTime.now().year} Delux Inc.',
                style: TextStyle(fontSize: 14, color: Colors.grey[600]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
