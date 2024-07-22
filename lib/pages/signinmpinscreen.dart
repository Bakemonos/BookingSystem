import 'package:app/pages/signin.dart';
import 'package:app/properties.dart';
import 'package:flutter/cupertino.dart';
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

  Widget numButton(int number) {
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

                    // MPIN CODE HERE
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        4,
                        (index) {
                          return Container(
                            margin: const EdgeInsets.all(6.0),
                            width: isPinVisible ? 50 : 16,
                            height: isPinVisible ? 50 : 16,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6.0),
                              color: index < enteredPin.length
                                  ? isPinVisible
                                      ? const Color(primaryColor)
                                      : const Color(primaryColor)
                                  : CupertinoColors.activeBlue.withOpacity(0.1),
                            ),
                            child: isPinVisible && index < enteredPin.length
                                ? Center(
                                    child: Text(
                                      enteredPin[index],
                                      style: TextStyle(
                                          fontSize: screenWidth * 0.05,
                                          fontFamily: "Poppins",
                                          color: const Color(textLight)),
                                    ),
                                  )
                                : null,
                          );
                        },
                      ),
                    ),

                    // VISIBILITY TOGGLE BUTTON
                    IconButton(
                        onPressed: () {
                          setState(() {
                            isPinVisible = !isPinVisible;
                          });
                        },
                        icon: Icon(isPinVisible
                            ? Icons.visibility_off
                            : Icons.visibility)),

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
                    showModalBottomSheet(
                      backgroundColor: Colors.transparent,
                      enableDrag: false,
                      barrierColor: Colors.transparent,
                      context: context,
                      builder: (context) => Container(
                        height: 400,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Color(foregroundColor),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(50),
                            topRight: Radius.circular(50),
                          ),
                        ),
                        // (index) => numButton();

                        child: Padding(
                            padding:
                                const EdgeInsets.only(left: 80, right: 80.0),
                            child: Column(
                              children: [
                                const SizedBox(height: 20.0),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    numButton(1),
                                    const SizedBox(width: 30.0),
                                    numButton(2),
                                    const SizedBox(width: 30.0),
                                    numButton(3),
                                  ],
                                ),
                                const SizedBox(height: 20.0),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    numButton(4),
                                    const SizedBox(width: 30.0),
                                    numButton(5),
                                    const SizedBox(width: 30.0),
                                    numButton(6),
                                  ],
                                ),
                                const SizedBox(height: 20.0),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    numButton(7),
                                    const SizedBox(width: 30.0),
                                    numButton(8),
                                    const SizedBox(width: 30.0),
                                    numButton(9),
                                  ],
                                ),
                                const SizedBox(height: 20.0),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    TextButton(
                                      onPressed: () =>
                                          setState(() => enteredPin = ''),
                                      child: SvgPicture.asset("assets/x.svg"),
                                    ),
                                    const SizedBox(width: 30.0),
                                    numButton(0),
                                    const SizedBox(width: 30.0),
                                    TextButton(
                                      onPressed: () => setState(() =>
                                          enteredPin = enteredPin.isNotEmpty
                                              ? enteredPin.substring(
                                                  0, enteredPin.length - 1)
                                              : enteredPin),
                                      child: SvgPicture.asset(
                                        "assets/backspace.svg",
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            )),
                      ),
                    );
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
