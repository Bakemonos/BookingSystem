import 'package:app/pages/getstarted.dart';
import 'package:app/properties.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController _dateController = TextEditingController();
  String valueChoose = "Select";
  bool isChecked = false;
  void dialogpopup() {
    double screenWidth = MediaQuery.of(context).size.width;

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          insetPadding: const EdgeInsets.all(20.0),
          child: Container(
              height: 600,
              width: 800,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                color: Color(foregroundColor),
              ),
              child: Column(
                children: [
                  Container(
                    height: 62,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0)),
                      color: Color(primaryColor),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        right: 20.0,
                        left: 20.0,
                      ),
                      child: Row(
                        children: [
                          SvgPicture.asset(
                              "assets/Icons/termsAndCondition.svg"),
                          const Spacer(
                            flex: 1,
                          ),
                          Text(
                            'TERMS AND CONDITION',
                            style: TextStyle(
                                color: const Color(textLight),
                                fontFamily: "Poppins",
                                fontSize: screenWidth * 0.05,
                                fontWeight: FontWeight.w400),
                          ),
                          const Spacer(
                            flex: 3,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Expanded(
                      child: SingleChildScrollView(
                    child: Padding(
                      padding: EdgeInsets.only(left: 20.0, right: 20.0),
                      child: Text(
                        '1. Eligibility & Use:\n'
                        'You must be at least 18 years old to use the App.\n'
                        'You are responsible for maintaining your login information and activity within the App.\n'
                        'Use the App lawfully, respectfully, and for its intended purpose (appointment scheduling).\n'
                        '2. Content Ownership:\n'
                        'We own the App content (text, images, code, etc.). Don\'t copy, modify, or distribute it without permission.\n'
                        'You own the content you submit (appointments, notes, etc.). You grant us a license to display it within the App.\n'
                        '3. Disclaimers & Limitations:\n'
                        'The App is provided "as is" with no guarantees of uninterrupted or error-free service.\n'
                        'We are not liable for any damages arising from App use.\n'
                        '4. Termination:\n'
                        'We may terminate your access for any reason. You can terminate your account anytime.\n'
                        '5. Governing Law & Disputes:\n'
                        'These Terms are governed by the laws of [Your State]. Disputes will be settled through arbitration.\n'
                        '6. Entire Agreement:\n'
                        'This is the entire agreement between us. If any part is invalid, the rest remains enforceable.\n'
                        '7. Contact:\n'
                        'For questions, please contact us at [Your Email Address].\n'
                        'This is a concise and essential version of terms and conditions for your appointment app. Remember to replace [Your State] and [Your Email Address] with your specific information.',
                        style: TextStyle(
                            fontSize: 16,
                            fontFamily: "Poppins",
                            color: Color(textSubtitle)),
                      ),
                    ),
                  )),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            minimumSize: const Size(150, 48.0),
                            side: const BorderSide(
                              color: Color(
                                  primaryColor), // Set your desired outline color
                              width: 1,
                              // Adjust outline width (optional)
                            ),
                          ),
                          onPressed: () {
                            setState(() {
                              isChecked = false;
                            });
                            Navigator.of(context).pop();
                          },
                          child: Text(
                            'Decline',
                            style: TextStyle(
                                fontSize: screenWidth * 0.03,
                                fontFamily: "Poppins",
                                color: const Color(primaryColor)),
                          ),
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(primaryColor),
                                minimumSize: const Size(150, 48.0)),
                            onPressed: () {
                              setState(() {
                                isChecked = true;
                              });
                              Navigator.of(context).pop();
                            },
                            child: Text(
                              'Accept',
                              style: TextStyle(
                                  fontSize: screenWidth * 0.03,
                                  fontFamily: "Poppins",
                                  color: const Color(textLight)),
                            ))
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                ],
              )),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(backgroundColor),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const SizedBox(height: 30),
                Text(
                  'Personal Information ',
                  style: TextStyle(
                      fontSize: screenWidth * 0.06,
                      color: const Color(textColor),
                      fontFamily: "Poppins"),
                ),
                Text(
                  'Please complete all fields',
                  style: TextStyle(
                      fontSize: screenWidth * 0.04,
                      fontFamily: "Poppins",
                      color: const Color(textSubtitle)),
                ),
                const SizedBox(
                  height: 30.0,
                ),
                Row(
                  children: [
                    Text(
                      'UID:',
                      style: TextStyle(
                          fontSize: screenWidth * 0.04,
                          fontFamily: "Poppins",
                          color: const Color(textColor)),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'X9Z7Y8',
                      style: TextStyle(
                          fontSize: screenWidth * 0.04,
                          fontFamily: "Poppins",
                          color: const Color(textSubtitle)),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'First Name',
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
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 1,
                            color: Color(textSubtitle),
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            width: 1,
                            color: Color(primaryColor),
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        hintStyle: const TextStyle(
                          color: Color(textStroke),
                        ),
                        hintText: 'Enter First Name',
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Middle Initial',
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
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 1, color: Color(textSubtitle)),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                width: 1,
                                color: Color(primaryColor),
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            hintStyle:
                                const TextStyle(color: Color(textStroke)),
                            hintText: 'Enter Middle Initial')),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Last Name',
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
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  width: 1, color: Color(textSubtitle)),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                width: 1,
                                color: Color(primaryColor),
                              ),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            hintStyle:
                                const TextStyle(color: Color(textStroke)),
                            hintText: 'Enter Last Name')),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Gender',
                        style: TextStyle(
                            fontSize: screenWidth * 0.04,
                            color: const Color(textColor),
                            fontFamily: "Poppins"),
                      ),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                      alignment: Alignment.center,
                      height: 55.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          border: Border.all(
                              width: 1, color: const Color(textSubtitle)),
                          borderRadius: BorderRadius.circular(5)),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton<String>(
                            dropdownColor: const Color(foregroundColor),
                            borderRadius: BorderRadius.circular(8.0),
                            value: valueChoose,
                            items: [
                              DropdownMenuItem(
                                value: 'Select',
                                child: Text(
                                  'Select',
                                  style: TextStyle(
                                      fontSize: screenWidth * 0.04,
                                      fontFamily: "Poppins",
                                      color: const Color(textSubtitle)),
                                ),
                              ),
                              DropdownMenuItem(
                                value: 'Male',
                                child: Text(
                                  'Male',
                                  style: TextStyle(
                                      fontSize: screenWidth * 0.04,
                                      fontFamily: "Poppins",
                                      color: const Color(textSubtitle)),
                                ),
                              ),
                              DropdownMenuItem(
                                value: 'Female',
                                child: Text(
                                  'Female',
                                  style: TextStyle(
                                      fontSize: screenWidth * 0.04,
                                      fontFamily: "Poppins",
                                      color: const Color(textSubtitle)),
                                ),
                              ),
                              DropdownMenuItem(
                                value: 'Non-binary',
                                child: Text(
                                  'Non-binary',
                                  style: TextStyle(
                                      fontSize: screenWidth * 0.04,
                                      fontFamily: "Poppins",
                                      color: const Color(textSubtitle)),
                                ),
                              ),
                              DropdownMenuItem(
                                value: 'Other',
                                child: Text(
                                  'Other',
                                  style: TextStyle(
                                      fontSize: screenWidth * 0.04,
                                      fontFamily: "Poppins",
                                      color: const Color(textSubtitle)),
                                ),
                              ),
                            ],
                            icon: const Icon(
                              Icons.arrow_drop_down,
                              color: Color(textColor),
                            ),

                            // iconSize: 24.0,
                            isExpanded: true,
                            style: const TextStyle(color: Color(textColor)),
                            onChanged: (newValue) {
                              setState(() {
                                valueChoose = newValue!;
                              });
                            }),
                      ),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Date of Birth',
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
                      controller: _dateController,
                      decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                width: 1, color: Color(textSubtitle)),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                              width: 2,
                              color: Color(primaryColor),
                            ),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          hintStyle: const TextStyle(color: Color(textStroke)),
                          suffixIcon: const Icon(Icons.calendar_month_outlined),
                          hintText: 'Date of Birth'),
                      readOnly: true,
                      onTap: () {
                        _selectDate();
                      },
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 24.0,
                      height: 24.0,
                      child: Checkbox(
                          activeColor: const Color(primaryColor),
                          value: isChecked,
                          onChanged: (value) {
                            if (value == true) {
                              setState(() {
                                dialogpopup();
                              });
                            } else {
                              setState(() {
                                isChecked = false;
                              });
                            }
                          }),
                    ),
                    const SizedBox(width: 5.0),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          isChecked = false;
                          dialogpopup();
                        });
                      },
                      child: Text(
                        'I have agreed to the privacy and policy',
                        style: TextStyle(
                          fontFamily: "Poppins",
                          color: const Color(textSubtitle),
                          fontSize: screenWidth * 0.04,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20.0,
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
                        builder: (context) => const Getstarted(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(primaryColor),
                    minimumSize: const Size(
                        double.infinity, 48.0), // Set width and height
                  ),
                  child: Text(
                    'Confirm',
                    style: TextStyle(
                      color: const Color(textLight),
                      fontSize: screenWidth * 0.05,
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                const SizedBox(height: 10.0),
                OutlinedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Getstarted(),
                      ),
                    );
                  },
                  style: OutlinedButton.styleFrom(
                    minimumSize: const Size(
                        double.infinity, 48.0), // Set width and height
                    side: const BorderSide(
                      color:
                          Color(primaryColor), // Set your desired outline color
                      width: 1, // Adjust outline width (optional)
                    ),
                  ),
                  child: Text(
                    'Cancel',
                    style: TextStyle(
                      color: const Color(primaryColor),
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
    );
  }

  Future<void> _selectDate() async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      setState(() {
        _dateController.text = picked.toString().split(" ")[0];
      });
    }
  }
}
