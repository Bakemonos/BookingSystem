import 'package:app/pages/review.dart';
import 'package:app/properties.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    bool isChecked = false;
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(backgroundColor),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 40.0),
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
                height: 40.0,
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
                height: 30.0,
              ),
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
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide:
                              const BorderSide(color: Color(textStroke))),
                      hintStyle: const TextStyle(color: Color(textStroke)),
                      hintText: 'Enter First Name')),
              const SizedBox(
                height: 20.0,
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Middle Name',
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
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide:
                              const BorderSide(color: Color(textStroke))),
                      hintStyle: const TextStyle(color: Color(textStroke)),
                      hintText: 'Enter Middle Name')),
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
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide:
                              const BorderSide(color: Color(textStroke))),
                      hintStyle: const TextStyle(color: Color(textStroke)),
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
              TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide:
                              const BorderSide(color: Color(textStroke))),
                      hintStyle: const TextStyle(color: Color(textStroke)),
                      hintText: 'Select Gender')),
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
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                          borderSide:
                              const BorderSide(color: Color(textStroke))),
                      hintStyle: const TextStyle(color: Color(textStroke)),
                      hintText: 'Select Date of Birth')),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 24.0,
                    height: 24.0,
                    child: Checkbox(
                      value: isChecked,
                      onChanged: (value) => setState(() => isChecked = value!),
                    ),
                  ),
                  const SizedBox(width: 5.0),
                  Text(
                    'I have agree in privacy and policy',
                    style: TextStyle(
                        fontFamily: "Poppins",
                        color: const Color(textSubtitle),
                        fontSize: screenWidth * 0.04),
                  ),
                ],
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: TextStyle(
                        fontFamily: "Poppins",
                        color: const Color(textSubtitle),
                        fontSize: screenWidth * 0.04),
                  ),
                  const SizedBox(width: 5.0),
                  Text(
                    'Sign In',
                    style: TextStyle(
                        fontFamily: "Poppins",
                        color: const Color(primaryColor),
                        fontSize: screenWidth * 0.04),
                  ),
                ],
              ),
              const SizedBox(
                height: 78.5,
              ),
              SizedBox(
                height: 60.0,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Review(),
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
        ),
      ),
    );
  }
}
