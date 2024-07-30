import 'package:app/pages/activities.dart';
import 'package:app/pages/home.dart';
import 'package:app/pages/records.dart';
import 'package:app/properties.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Homemenu extends StatefulWidget {
  const Homemenu({super.key});

  @override
  State<Homemenu> createState() => _HomemenuState();
}

class _HomemenuState extends State<Homemenu> {
  @override
  Widget build(BuildContext context) {
    const int selectedIndex = 0;

    List widgetOption = [
      const Home(),
      const Activities(),
      const Records(),
    ];

    return Scaffold(
      backgroundColor: const Color(backgroundColor),
      body: Column(
        children: [
          Center(
            child: widgetOption.elementAt(selectedIndex),
          )
        ],
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
            color: Color(foregroundColor),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0))),
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
        child: const GNav(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          activeColor: Color(textLight),
          color: Color(textColor),
          tabBackgroundColor: Color(primaryColor),
          gap: 8,
          tabs: [
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
        ),
      ),
    );
  }
}
