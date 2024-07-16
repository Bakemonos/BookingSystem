import 'package:app/pages/otp.dart';
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

    return Scaffold(
        backgroundColor: const Color(0xFFDAEBFE),
        body: Stack(
          children: [
            SvgPicture.asset(
              alignment: Alignment.center,
              'assets/backgroundShape.svg',
              width: screenWidth,
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              padding: const EdgeInsets.fromLTRB(0, 40.0, 0, 0),
                              child: SvgPicture.asset(
                                'assets/arrow.svg',
                                width: 30.0,
                                height: 30.0,
                                alignment: Alignment.topCenter,
                              ),
                            ),
                            const SizedBox(
                              width: 20.0,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 35.0),
                              child: SizedBox(
                                height: 30.0,
                                child: Text(
                                  'Sign Up',
                                  style: TextStyle(
                                      fontSize: screenWidth * 0.05,
                                      color: const Color(textColor)),
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 130.0,
                        ),
                        SvgPicture.asset(
                          'assets/signupImage.svg',
                          alignment: Alignment.topCenter,
                        ),
                        const SizedBox(
                          height: 30.0,
                        ),
                        const Text(
                          'Verification code on your email',
                          style: TextStyle(
                              color: Color(textColor), fontSize: 26.0),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(30.0, 0, 30.0, 0),
                          child: Text(
                            'We will send verification code on your email',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: screenWidth * 0.05,
                                color: const Color(textSubtitle)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          child: const Text(
                            'Enter your email',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w400,
                              color: Color(0xFF454545),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0),
                                  borderSide: const BorderSide(
                                      color: Color(0xFFBEBEBE))),
                              prefixIcon: const Icon(
                                Icons.email_outlined,
                                color: Color(0xFFBEBEBE),
                              ),
                              hintText: 'Email',
                              hintStyle:
                                  const TextStyle(color: Color(0xFFBEBEBE))),
                        ),
                        const SizedBox(
                          height: 40.0,
                        ),
                        SizedBox(
                          height: 60.0,
                          width: double.infinity,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Otp(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color(0xFF44D1FD).withOpacity(0.7),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0),
                              ),
                            ),
                            child: const Text(
                              'Next',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.normal,
                                color: Color(0xFFF5F5F5),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
