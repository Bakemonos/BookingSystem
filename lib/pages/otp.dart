import 'package:app/pages/mpin.dart';
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

    return Scaffold(
      backgroundColor: const Color(0xFFDAEBFE),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
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
                  height: 50.0,
                ),
                Text(
                  'Enter the 6-digit One-Time PIN (OTP)',
                  style: TextStyle(
                    fontSize: screenWidth * 0.06,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xFF454545),
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
                      color: const Color(0xFF7F7F7F)),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  'ric**********es@gmail.com',
                  style: TextStyle(
                      fontSize: screenWidth * 0.04,
                      color: const Color(0xFF44D1FD).withOpacity(0.7)),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Didn’t receive code?',
                  style: TextStyle(
                      fontSize: screenWidth * 0.05,
                      color: const Color(0xFF7F7F7F)),
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
                        color: const Color(0xFF609EF4).withOpacity(0.8),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                      child: Text(
                        '2:00',
                        style: TextStyle(
                            fontSize: 16.0,
                            color: const Color(0xFF609EF4).withOpacity(0.8)),
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Mpin(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF44D1FD).withOpacity(0.7),
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
          ],
        ),
      ),
    );
  }
}
