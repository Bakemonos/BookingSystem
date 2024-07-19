import 'package:app/pages/otp.dart';
import 'package:app/pages/screen.dart';
import 'package:app/properties.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    //double screenHeight = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
          backgroundColor: const Color(backgroundColor),
          appBar: AppBar(
            centerTitle: true,
            title: Text(
              'Sign Up',
              style: TextStyle(
                fontSize: screenWidth * 0.05,
                fontFamily: "Poppins",
                color: const Color(textColor),
              ),
            ),
            backgroundColor: const Color(foregroundColor),
            automaticallyImplyLeading: false,
            leading: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Screen(),
                  ),
                );
              },
              icon: SvgPicture.asset(
                'assets/arrow.svg',
              ),
            ),
          ),
          body: Stack(
            children: [
              SvgPicture.asset(
                alignment: Alignment.center,
                'assets/emailShape.svg',
                width: screenWidth,
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        SvgPicture.asset(
                          'assets/signupImage.svg',
                          alignment: Alignment.topCenter,
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        Text(
                          'Verification code on your email',
                          style: TextStyle(
                              color: const Color(textColor),
                              fontSize: screenWidth * 0.05,
                              fontFamily: "Poppins"),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          'We will send verification code on your email',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: screenWidth * 0.041,
                              color: const Color(textSubtitle),
                              fontFamily: "Poppins"),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Enter your email',
                            style: TextStyle(
                                fontSize: screenWidth * 0.04,
                                fontWeight: FontWeight.w400,
                                color: const Color(textColor),
                                fontFamily: "Poppins"),
                          ),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        TextField(
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    width: 1, color: Color(textStroke)),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  width: 2,
                                  color: Color(primaryColor),
                                ),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              prefixIcon: const Icon(
                                Icons.email_outlined,
                                color: Color(textStroke),
                              ),
                              hintText: 'Email',
                              hintStyle: const TextStyle(
                                  color: Color(textStroke),
                                  fontFamily: "Poppins")),
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        SizedBox(
                          height: 60.0,
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const Otp(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(primaryColor),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                            child: Text(
                              'Next',
                              style: TextStyle(
                                fontSize: screenWidth * 0.04,
                                fontWeight: FontWeight.normal,
                                color: const Color(textLight),
                                fontFamily: "Poppins",
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
