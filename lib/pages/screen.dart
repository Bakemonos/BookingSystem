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
                  )
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                width: 225.0,
                height: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: const Color(foregroundColor),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      'assets/sampleLogo.svg',
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'Sample Title',

                      style: TextStyle(
                        color: const Color(textSubtitle),
                        fontWeight: FontWeight.bold,
                        fontSize: screenWidth * 0.05,
                        fontFamily: 'Poppins',
                      ), // Adjust to your text style
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      child: OutlinedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Signup(),
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




                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            Text(
                              'SIGN IN',
                              style: TextStyle(
                                fontSize: screenWidth * 0.05,
                                fontWeight: FontWeight.normal,
                                fontFamily: "Poppins",
                                color: const Color(textSubtitle),
                              ),


                              
                            ),
                            SvgPicture.asset(
                              'assets/arrowRight.svg',
                            ),



                          ],
                        ),





                      ),
                    ),
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
