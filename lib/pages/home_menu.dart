import 'package:app/pages/activities.dart';
import 'package:app/pages/home.dart';
import 'package:app/pages/records.dart';
import 'package:app/properties.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class HomeMenu extends StatefulWidget {
  const HomeMenu({super.key});

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
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
        child: GNav(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          activeColor: const Color(textLight),
          color: const Color(textColor),
          tabBackgroundColor: const Color(primaryColor),
          gap: 8,
          tabs: const [
            GButton(
              rippleColor: Color(backgroundColor),
              icon: Icons.home,
              text: 'Home',
            ),
            GButton(
              rippleColor: Color(backgroundColor),
              icon: Icons.file_copy_sharp,
              text: 'Activities',
            ),
            GButton(
              rippleColor: Color(backgroundColor),
              icon: Icons.folder,
              text: 'Records',
            ),
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
