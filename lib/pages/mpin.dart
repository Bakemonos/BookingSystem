import 'package:app/pages/register.dart';
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
    // double screenWidth = MediaQuery.of(context).size.width;
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
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.fromLTRB(0, 40.0, 0, 0),
                  child: SvgPicture.asset(
                    'assets/x.svg',
                    width: 24.0,
                    height: 24.0,
                    alignment: Alignment.topCenter,
                  ),
                ),
                const SizedBox(
                  height: 50.0,
                ),
                Container(
                  alignment: Alignment.center,
                  child: const Text(
                    'Create your 4-digit MPIN',
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF454545),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                const Text(
                  'Remember your 4-digit MPIN, this will serve as your login  code to enter the app',
                  style: TextStyle(fontSize: 16.0, color: Color(0xFF7F7F7F)),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 30.0,
                ),
                VerificationCode(
                  textStyle: const TextStyle(fontSize: 24.0),
                  underlineColor: const Color(0xFFA8A8A8),
                  keyboardType: TextInputType.number,
                  onCompleted: (value) {},
                  onEditing: (value) {},
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
                          builder: (context) => Register(),
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
