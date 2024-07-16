import 'package:app/properties.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Screen extends StatefulWidget {
  const Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(backgroundColor),
      body: Column(
        children: [
          Container(
            child: Column(
              children: [
                Stack(
                  children: [
                    SvgPicture.asset(
                      width: screenWidth,
                      'assets/backgroundShapeScreen.svg',
                    ),
                    Expanded(
                      child: Image.asset(
                        width: screenWidth,
                        'assets/backgroundModel.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
                Positioned(
                  top: screenHeight * 0.5,
                  left: (screenWidth - 200.0) / 2.0,
                  child: Container(
                    height: 50.0,
                    width: 200.0,
                    color: Colors.white, // Adjust to your foreground color
                    child: Center(
                      child: Text(
                        'SIGN IN',
                        style: TextStyle(
                            color: Colors.black), // Adjust to your text style
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
