import 'package:app/pages/getstarted.dart';
import 'package:app/pages/signinmpinscreen.dart';
import 'package:app/pages/signup.dart';
import 'package:app/properties.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Signin extends StatefulWidget {
  const Signin({super.key});

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    //double screenHeight = MediaQuery.of(context).size.height;

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: const Color(backgroundColor),
        appBar: AppBar(
          backgroundColor: const Color(foregroundColor),
          centerTitle: true,
          automaticallyImplyLeading: false,
          title: Text(
            'Sign In',
            style:
                TextStyle(fontSize: screenWidth * 0.05, fontFamily: "Poppins"),
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Getstarted()));
              },
              icon: SvgPicture.asset("assets/Icons/arrow.svg")),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              width: double.infinity,
              height: 500,
              decoration: const BoxDecoration(
                color: Color(foregroundColor),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(25.0, 0, 25.0, 25.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        const SizedBox(
                          height: 30.0,
                        ),
                        Text(
                          'Welcome back',
                          style: TextStyle(
                              color: const Color(textColor),
                              fontFamily: "Poppins",
                              fontSize: screenWidth * 0.06),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          'Please log in to your account',
                          style: TextStyle(
                              color: const Color(textSubtitle),
                              fontFamily: "Poppins",
                              fontSize: screenWidth * 0.04),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Enter your email',
                            style: TextStyle(
                                fontSize: screenWidth * 0.04,
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
                                  width: 1, color: Color(primaryColor)),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                width: 2,
                                color: Color(primaryColor),
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            prefixIcon: const Padding(
                              padding: EdgeInsets.only(left: 20.0, right: 10.0),
                              child: Icon(
                                Icons.email_outlined,
                                color: Color(primaryColor),
                              ),
                            ),
                            hintText: 'Email',
                            hintStyle: const TextStyle(
                                color: Color(textStroke),
                                fontFamily: "Poppins"),
                            focusColor: const Color(textStroke),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Signinmpinscreen(),
                              ),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(primaryColor),
                            minimumSize: const Size(
                                double.infinity, 48.0), // Set width and height
                          ),
                          child: Text(
                            'Next',
                            style: TextStyle(
                              color: const Color(textLight),
                              fontSize: screenWidth * 0.05,
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 48,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Already have an account?',
                                style: TextStyle(
                                    fontSize: screenWidth * 0.04,
                                    fontFamily: "Poppins",
                                    color: const Color(textColor)),
                              ),
                              const SizedBox(
                                width: 10.0,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const Signup()));
                                },
                                child: Text('Sign up',
                                    style: TextStyle(
                                        fontSize: screenWidth * 0.04,
                                        fontFamily: "Poppins",
                                        color: const Color(primaryColor))),
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
