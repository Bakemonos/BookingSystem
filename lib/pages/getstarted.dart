import 'package:app/pages/signin.dart';
import 'package:app/pages/signup.dart';
import 'package:app/properties.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Getstarted extends StatefulWidget {
  const Getstarted({super.key});

  @override
  State<Getstarted> createState() => _GetstartedState();
}

class _GetstartedState extends State<Getstarted> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            width: double.infinity,
            'assets/Pictures/AppBackground.png',
            fit: BoxFit.contain,
          ),
          SizedBox(
            width: screenWidth,
            height: screenHeight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 480,
                  width: screenWidth,
                  decoration: const BoxDecoration(
                    color: Color(foregroundColor),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50), // Set your desired radius
                      topRight: Radius.circular(50),
                      // Set your desired radius
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 5.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset("assets/sampleLogo.svg"),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              'Sample',
                              style: TextStyle(
                                  fontSize: screenWidth * 0.08,
                                  fontFamily: "Poppins",
                                  color: const Color(textColor),
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Text(
                          'Welcome',
                          style: TextStyle(
                              fontSize: screenWidth * 0.06,
                              fontFamily: "Poppins",
                              color: const Color(textColor),
                              fontWeight: FontWeight.w400),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          'Schedule smarter, reclaim your time',
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: screenWidth * 0.04,
                              color: const Color(textSubtitle)),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Signin(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(primaryColor),
                            minimumSize: const Size(
                                double.infinity, 48.0), // Set width and height
                          ),
                          child: Text(
                            'Sign in',
                            style: TextStyle(
                              color: const Color(textLight),
                              fontSize: screenWidth * 0.05,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            minimumSize: const Size(
                                double.infinity, 48.0), // Set width and height
                            side: const BorderSide(
                              color: Color(
                                  primaryColor), // Set your desired outline color
                              width: 1, // Adjust outline width (optional)
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Signup(),
                              ),
                            );
                          },
                          child: Text(
                            'Sign up',
                            style: TextStyle(
                              color: const Color(primaryColor),
                              fontSize: screenWidth * 0.05,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
