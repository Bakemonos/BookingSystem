import 'package:app/pages/mpin.dart';
import 'package:app/pages/signup.dart';
import 'package:app/properties.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';

class Otp extends StatefulWidget {
  const Otp({super.key});

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
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
            'Sign Up',
            style:
                TextStyle(fontSize: screenWidth * 0.05, fontFamily: "Poppins"),
          ),
          leading: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Signup()));
              },
              icon: SvgPicture.asset("assets/Icons/arrow.svg")),
        ),
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Text(
                    'Enter the 6-digit One-Time PIN (OTP)',
                    style: TextStyle(
                      fontSize: screenWidth * 0.06,
                      color: const Color(textColor),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 50.0,
                  ),
                  VerificationCode(
                    length: 6,
                    textStyle: TextStyle(fontSize: screenWidth * 0.06),
                    underlineColor: const Color(0xFFA8A8A8),
                    keyboardType: TextInputType.number,
                    onCompleted: (value) {},
                    onEditing: (value) {},
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Text(
                    'We sent a 6-digit authentication code to your registered Email',
                    style: TextStyle(
                        fontSize: screenWidth * 0.04,
                        color: const Color(textSubtitle)),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 40.0,
                  ),
                  Text(
                    'Didn’t receive code?',
                    style: TextStyle(
                        fontSize: screenWidth * 0.04,
                        color: const Color(textSubtitle)),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Resend New Code',
                        style: TextStyle(
                          fontSize: screenWidth * 0.04,
                          color: const Color(secondaryColor).withOpacity(0.8),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                        child: Text(
                          '2:00',
                          style: TextStyle(
                              fontSize: 16.0,
                              color:
                                  const Color(secondaryColor).withOpacity(0.8)),
                        ),
                      ),
                    ],
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
                          builder: (context) => const Mpin(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(primaryColor),
                      minimumSize: const Size(
                          double.infinity, 48.0), // Set width and height
                    ),
                    child: Text(
                      'Verify',
                      style: TextStyle(
                        color: const Color(textLight),
                        fontSize: screenWidth * 0.05,
                        fontFamily: "Poppins",
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
