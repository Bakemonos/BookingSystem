import 'package:app/home/screen/activities.dart';
import 'package:app/home/screen/home.dart';
import 'package:app/home/screen/records.dart';
import 'package:app/properties.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeMenu extends StatefulWidget {
  const HomeMenu({
    super.key,
  });

  @override
  State<HomeMenu> createState() => _HomeMenuState();
}

class _HomeMenuState extends State<HomeMenu> {
  int selectedIndex = 0;

  final List<Widget> widgetOption = <Widget>[
    const Home(),
    const Activities(),
    const Records(),
  ];

  GButton buildGButton(IconData icon, String text) {
    return GButton(
      rippleColor: const Color(backgroundColor),
      icon: icon,
      text: text,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(backgroundColor),
      body: Center(
        child: widgetOption.elementAt(selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          color: Color(foregroundColor),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 18),
        child: GNav(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          activeColor: const Color(textLight),
          color: const Color(textColor),
          tabBackgroundColor: const Color(primaryColor),
          gap: 8,
          tabs: [
            buildGButton(Icons.home, 'Home'),
            buildGButton(Icons.file_copy_sharp, 'Activities'),
            buildGButton(Icons.folder, 'Records'),
          ],
          selectedIndex: selectedIndex,
          onTabChange: (index) {
            setState(() {
              selectedIndex = index;
            });
          },
        ),
      ),
    );
  }
}
