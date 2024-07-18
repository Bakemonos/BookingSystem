import 'package:app/properties.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Review extends StatefulWidget {
  const Review({super.key});

  @override
  State<Review> createState() => _ReviewState();
}

class _ReviewState extends State<Review> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(backgroundColor),
      body: Padding(
        padding: const EdgeInsetsDirectional.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
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
                  ],
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Review your personal information',
                      style: TextStyle(
                          fontSize: screenWidth * 0.05,
                          fontFamily: "Poppins",
                          color: const Color(textColor)),
                    )),
                const SizedBox(
                  height: 5.0,
                ),
                Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Review your personal information',
                      style: TextStyle(
                          fontSize: screenWidth * 0.04,
                          fontFamily: "Poppins",
                          color: const Color(textSubtitle)),
                    )),
                const SizedBox(
                  height: 30.0,
                ),
                Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Personal Information',
                      style: TextStyle(
                          fontSize: screenWidth * 0.04,
                          fontFamily: "Poppins",
                          color: const Color(textColor)),
                    )),
                const SizedBox(
                  height: 10.0,
                ),
                Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: const Color(primaryColor)),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                              border: BorderDirectional(
                                  bottom:
                                      BorderSide(color: Color(textStroke)))),
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 20.0),
                            child: Row(
                              children: [
                                Text(
                                  'UID:',
                                  style: TextStyle(
                                    fontSize: screenWidth * 0.04,
                                    fontFamily: "Poppins",
                                    color: const Color(textColor),
                                  ),
                                ),
                                const SizedBox(
                                  width: 5.0,
                                ),
                                Text(
                                  'X9Z7Y8',
                                  style: TextStyle(
                                    fontSize: screenWidth * 0.04,
                                    fontFamily: "Poppins",
                                    color: const Color(textSubtitle),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          width: double.infinity,
                          decoration: const BoxDecoration(
                              border: BorderDirectional(
                                  bottom:
                                      BorderSide(color: Color(textStroke)))),
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 20.0),
                            child: Text(
                              'Full Name',
                              style: TextStyle(
                                fontSize: screenWidth * 0.04,
                                fontFamily: "Poppins",
                                color: const Color(textColor),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        Container(
                          width: double.infinity,
                          decoration: const BoxDecoration(
                              border: BorderDirectional(
                                  bottom:
                                      BorderSide(color: Color(textStroke)))),
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 20.0),
                            child: Text(
                              'Birthday',
                              style: TextStyle(
                                fontSize: screenWidth * 0.04,
                                fontFamily: "Poppins",
                                color: const Color(textColor),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20.0,
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: Text(
                            'Sex assigned at birth',
                            style: TextStyle(
                              fontSize: screenWidth * 0.04,
                              fontFamily: "Poppins",
                              color: const Color(textColor),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 60.0,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (context) => const Mpin(),
                      //   ),
                      // );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF44D1FD).withOpacity(0.7),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                    child: Text(
                      'Submit',
                      style: TextStyle(
                        fontSize: screenWidth * 0.04,
                        fontWeight: FontWeight.normal,
                        color: const Color(0xFFF5F5F5),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 60.0,
                  width: double.infinity,
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      'Go back and edit',
                      style: TextStyle(
                          fontSize: screenWidth * 0.04,
                          fontFamily: "Poppins",
                          color: const Color(primaryColor)),
                    ),
                  ),
                ),
              ],
            )
            // BUTTON
          ],
        ),
      ),
    );
  }
}
