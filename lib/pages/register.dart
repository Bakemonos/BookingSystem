import 'package:app/pages/review.dart';
import 'package:app/properties.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController _dateController = TextEditingController();
  String valueChoose = "Select";
  @override
  Widget build(BuildContext context) {
    bool isChecked = true;
    double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;
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
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(primaryColor)),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
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
                              hintStyle:
                                  const TextStyle(color: Color(textStroke)),
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
                              hintStyle:
                                  const TextStyle(color: Color(textStroke)),
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
                        alignment: Alignment.center,
                        padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                        height: 55.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 1, color: const Color(textSubtitle)),
                            borderRadius: BorderRadius.circular(5)),
                        child: DropdownButton<String>(
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
                            hintStyle:
                                const TextStyle(color: Color(textStroke)),
                            suffixIcon:
                                const Icon(Icons.calendar_month_outlined),
                            hintText: 'Date of Birth'),
                        readOnly: true,
                        onTap: () {
                          _selectDate();
                        },
                      ),
                    ],
                  ),
                ),
              ),
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
                      activeColor: const Color(primaryColor),
                      value: isChecked,
                      onChanged: (value) => setState(() => isChecked = value!),
                    ),
                  ),
                  const SizedBox(width: 5.0),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'I have agreed to the ',
                          style: TextStyle(
                            fontFamily: "Poppins",
                            color: const Color(textSubtitle),
                            fontSize: screenWidth * 0.04,
                          ),
                        ),
                        TextSpan(
                          text: 'privacy',
                          style: TextStyle(
                            fontFamily: "Poppins",
                            color: const Color(
                                primaryColor), // Change color for "privacy"
                            fontSize: screenWidth * 0.04,
                          ),
                        ),
                        TextSpan(
                          text: ' and',
                          style: TextStyle(
                            fontFamily: "Poppins",
                            color: const Color(
                                textSubtitle), // Change color for "privacy"
                            fontSize: screenWidth * 0.04,
                          ),
                        ),
                        TextSpan(
                          text: ' policy.',
                          style: TextStyle(
                            fontFamily: "Poppins",
                            color: const Color(primaryColor),
                            fontSize: screenWidth * 0.04,
                          ),
                        ),
                      ],
                    ),
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
                    backgroundColor: const Color(primaryColor),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  child: Text(
                    'Confirm',
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
