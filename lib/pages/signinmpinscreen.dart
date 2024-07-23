import 'package:app/pages/signin.dart';
import 'package:app/properties.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Signinmpinscreen extends StatefulWidget {
  const Signinmpinscreen({super.key});

  @override
  State<Signinmpinscreen> createState() => _SigninState();
}

class _SigninState extends State<Signinmpinscreen> {
  String enteredPin = '';
  bool isPinVisible = false;

  Widget newButton(int number) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: TextButton(
        onPressed: () {
          setState(() {
            if (enteredPin.length < 4) {
              enteredPin += number.toString();
            }
          });
        },
        child: Text(
          number.toString(),
          style: const TextStyle(fontSize: 24.0, color: Color(textColor)),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(backgroundColor),
      appBar: AppBar(
        backgroundColor: const Color(foregroundColor),
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          'Sign In',
          style: TextStyle(fontSize: screenWidth * 0.05, fontFamily: "Poppins"),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Signin()));
            },
            icon: SvgPicture.asset("assets/arrow.svg")),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 150.0,
                ),

                Column(
                  children: [
                    Text(
                      'Enter you MPIN',
                      style: TextStyle(
                          fontSize: screenWidth * 0.04,
                          fontFamily: "Poppins",
                          color: const Color(textSubtitle)),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    // Radio MPIN

                    // ListView(
                    //   padding: const EdgeInsets.symmetric(horizontal: 24),
                    //   physics: const BouncingScrollPhysics(),
                    //   children: [
                    //     Row(
                    //       mainAxisAlignment: MainAxisAlignment.center,
                    //       children: List.generate(
                    //         4,
                    //         (index) {
                    //           return Container(
                    //             margin: const EdgeInsets.all(6.0),
                    //             width: isPinVisible ? 50 : 16,
                    //             height: isPinVisible ? 50 : 16,
                    //             decoration: BoxDecoration(
                    //               borderRadius: BorderRadius.circular(6.0),
                    //               color: index < enteredPin.length
                    //                   ? isPinVisible
                    //                       ? Colors.green
                    //                       : CupertinoColors.activeBlue
                    //                   : CupertinoColors.activeBlue
                    //                       .withOpacity(0.1),
                    //             ),
                    //           );
                    //         },
                    //       ),
                    //     ),
                    //   ],
                    // ),

                    const SizedBox(
                      width: 100,
                      height: 20,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [],
                      ),
                    ),
                  ],
                ),
                // SPACE BETWEEN
              ],
            ),
            Column(
              children: [
                GestureDetector(
                  onTap: () {
                    _displayBottomSheet(context);
                  },
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(15.0, 20.0, 15.0, 20.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: const Color(primaryColor),
                    ),
                    child: Column(
                      children: [
                        SvgPicture.asset("assets/MpinIcon.svg"),
                        Text(
                          'MPIN Login',
                          style: TextStyle(
                              fontSize: screenWidth * 0.03,
                              fontFamily: "Poppins",
                              color: const Color(textLight),
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Help Center',
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: screenWidth * 0.03,
                          color: const Color(textSubtitle),
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Forgot MPIN?',
                      style: TextStyle(
                          fontFamily: "Poppins",
                          fontSize: screenWidth * 0.03,
                          color: const Color(textSubtitle),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Future _displayBottomSheet(BuildContext context) {
  return showModalBottomSheet(
    backgroundColor: Colors.transparent,
    enableDrag: false,
    barrierColor: Colors.transparent,
    context: context,
    builder: (context) => Container(
      height: 400,
      decoration: const BoxDecoration(
        color: Color(foregroundColor),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
    ),
  );
}
