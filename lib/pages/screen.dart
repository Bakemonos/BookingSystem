import 'package:app/pages/signin.dart';
import 'package:app/pages/signup.dart';
import 'package:app/properties.dart';
import 'package:flutter/material.dart';
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
    // double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(backgroundColor),
      body: Column(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  SvgPicture.asset(
                    width: screenWidth,
                    'assets/backgroundShapeScreen.svg',
                  ),
                  Image.asset(
                    width: screenWidth,
                    'assets/backgroundModel.png',
                    fit: BoxFit.contain,
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        SizedBox(
                          height: 55,
                          width: double.infinity,
                          child: OutlinedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Signin(),
                                ),
                              );
                            },
                            style: OutlinedButton.styleFrom(
                              side: const BorderSide(
                                color: Color(
                                    primaryColor), // Set your desired stroke color
                                width: 0.8, // Adjust the stroke width as needed
                              ),
                              backgroundColor: const Color(foregroundColor),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                            child: Text(
                              'SIGN IN',
                              style: TextStyle(
                                fontSize: screenWidth * 0.04,
                                fontWeight: FontWeight.normal,
                                fontFamily: "Poppins",
                                color: const Color(textSubtitle),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 20.0, top: 12.0),
                          child: Align(
                            alignment: Alignment.topRight,
                            child: SvgPicture.asset(
                              width: 24.0,
                              height: 24.0,
                              'assets/arrowRight.svg',
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    GestureDetector(
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                            fontFamily: "Poppins",
                            fontSize: screenWidth * 0.04,
                            color: const Color(primaryColor)),
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Signup(),
                          ),
                        );
                      },
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Text(
                      'Version 1991',
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: screenWidth * 0.03,
                          color: const Color(textSubtitle)),
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
