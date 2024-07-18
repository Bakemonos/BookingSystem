import 'package:app/pages/mpinconfirm.dart';
import 'package:app/pages/otp.dart';
import 'package:app/properties.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';

class Mpin extends StatefulWidget {
  const Mpin({super.key});

  @override
  State<Mpin> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Mpin> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
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
        backgroundColor: const Color(backgroundColor),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const Otp(),
              ),
            );
          },
          icon: SvgPicture.asset(
            'assets/arrow.svg',
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    'Create your 4-digit MPIN',
                    style: TextStyle(
                      fontSize: screenWidth * 0.06,
                      color: const Color(textColor),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Remember your 4-digit MPIN, this will serve as your login  code to enter the app',
                  style: TextStyle(
                      fontSize: screenWidth * 0.04,
                      color: const Color(textColor)),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 30.0,
                ),
                VerificationCode(
                  textStyle: TextStyle(fontSize: screenWidth * 0.06),
                  underlineColor: const Color(textSubtitle),
                  keyboardType: TextInputType.number,
                  onCompleted: (value) {},
                  onEditing: (value) {},
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Please create a secure and memorable 4-digit MPIN for yourself.',
                  style: TextStyle(
                      fontSize: screenWidth * 0.04,
                      color: const Color(textSubtitle)),
                  textAlign: TextAlign.center,
                )
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 60.0,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Mpinconfirm(),
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
    );
  }
}
