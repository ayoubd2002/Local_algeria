//main li fiha home wlprofile 


import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:local_algeria/screens/home_screen.dart';
import 'package:local_algeria/screens/profile.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class mainapp extends StatefulWidget {
  const mainapp({super.key});
  static const routname = 'main_app';

  @override
  State<mainapp> createState() => _mainappState();
}

class _mainappState extends State<mainapp> {
  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IndexedStack(
        index: currentindex,
        children: [
          homescreen(),
          Container(
            color: Color.fromARGB(255, 48, 178, 81),
          ),
          RootApp(),
          Container(
            color: Color.fromARGB(255, 224, 17, 17),
          ),
        ],
      ),
      bottomNavigationBar: SalomonBottomBar(
          currentIndex: currentindex,
          onTap: (index) {
            setState(() {
              currentindex = index;
            });
          },
          selectedItemColor: const Color.fromARGB(255, 18, 107, 21),
          unselectedItemColor: Color.fromARGB(255, 8, 63, 10).withOpacity(0.2),
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          items: [
            SalomonBottomBarItem(
              icon: FaIcon(
                Icons.home,
                size: 20,
              ),
              title: Text('Home'),
            ),
            SalomonBottomBarItem(
              icon: Icon(
                Icons.favorite_border,
                size: 20,
              ),
              title: Text('likes'),
            ),
            SalomonBottomBarItem(
              icon: Icon(
                Icons.person,
                size: 20,
              ),
              title: Text('profile'),
            ),
            SalomonBottomBarItem(
              icon: Icon(
                Icons.settings,
                size: 20,
              ),
              title: Text('settings'),
            ),
          ]),
    );
  }
}
