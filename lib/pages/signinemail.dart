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
    // double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(backgroundColor),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 50.0,
                ),
                Stack(
                  children: [
                    Container(
                        alignment: Alignment.center,
                        child: SvgPicture.asset("assets/signInBackground.svg")),
                    Row(
                      children: [
                        IconButton(
                          icon: SvgPicture.asset("assets/arrow.svg"),
                          onPressed: () {},
                        ),
                        const Spacer(),
                        Flexible(
                          flex: 2,
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                                fontSize: screenWidth * 0.05,
                                fontFamily: "Poppins",
                                color: const Color(textColor)),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    const SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      'Good Day!',
                      style: TextStyle(
                          fontSize: screenWidth * 0.05,
                          fontFamily: "Poppins",
                          color: const Color(textSubtitle)),
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
                        fillColor: const Color(primaryColor).withOpacity(0.8),
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 2, color: Color(textLight)),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 2,
                            color: Color(secondaryColor),
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        prefixIcon: const Icon(
                          Icons.email_outlined,
                          color: Color(textLight),
                        ),
                        hintText: 'Email',
                        hintStyle: const TextStyle(
                            color: Color(textLight), fontFamily: "Poppins"),
                        focusColor: const Color(textLight),
                      ),
                    ),
                  ],
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
                      //     builder: (context) => const Otp(),
                      //   ),
                      // );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          const Color(primaryColor).withOpacity(0.8),
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
    );
  }
}
