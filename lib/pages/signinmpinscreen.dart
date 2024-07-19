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
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Signin()));
                          },
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
                    const Text(
                      '',
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.only(top: 5.0, bottom: 5.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                              width: 1, color: const Color(primaryColor))),
                      child: Container(
                        padding: const EdgeInsets.only(left: 20.0),
                        alignment: Alignment.centerLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'ricojaygonzales5@gmail.com',
                              style: TextStyle(
                                  fontSize: screenWidth * 0.04,
                                  fontFamily: "Poppinss",
                                  color: const Color(textColor)),
                            ),
                            IconButton(
                                padding: const EdgeInsets.only(right: 20.0),
                                onPressed: () {},
                                icon: SvgPicture.asset(
                                  "assets/signInIcon.svg",
                                  // ignore: deprecated_member_use
                                  color: const Color(primaryColor),
                                ))
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
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
                    SizedBox(
                      width: 100,
                      height: 20,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          for (int i = 0; i < 4; i++)
                            Container(
                              width: 18.0,
                              height: 18.0,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    width: 1, color: const Color(textSubtitle)),
                                borderRadius: BorderRadius.circular(20.0),
                              ),
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
                // SPACE BETWEEN
              ],
            ),
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.fromLTRB(15.0, 20.0, 15.0, 20.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: const Color(foregroundColor),
                  ),
                  child: Column(
                    children: [
                      SvgPicture.asset("assets/mpinDesgin.svg"),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        'MPIN Login',
                        style: TextStyle(
                            fontSize: screenWidth * 0.03,
                            fontFamily: "Poppins",
                            color: const Color(textSubtitle)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 50.0,
                ),
                Container(
                  padding: const EdgeInsets.only(left: 50.0, right: 50.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      )
                    ],
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

// class CustomRadioButtonListTile extends StatelessWidget {
//   final int value;
//   final int groupValue;
//   final Function(dynamic) onChanged;

//   const CustomRadioButtonListTile({
//     super.key,
//     required this.groupValue,
//     required this.value,
//     required this.onChanged,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisSize: MainAxisSize.min,
//       children: List.generate(4, (index) => _buildRadioDot(index + 1)),
//     );
//   }

//   Widget _buildRadioDot(int index) {
//     return Container(
//       width: 10.0,
//       height: 10.0,
//       margin: const EdgeInsets.symmetric(horizontal: 5.0),
//       decoration: BoxDecoration(
//         shape: BoxShape.circle,
//         color: groupValue == index ? Colors.blue : Colors.grey,
//       ),
//     );
//   }
// }
