import 'package:flutter/material.dart';

class Try extends StatefulWidget {
  const Try({super.key});

  @override
  State<Try> createState() => _TryState();
}

class _TryState extends State<Try> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        color: Colors.blue[900],
        child: Stack(
          children: [
            Container(
              width: screenWidth,
              height: 350,
              color: Colors.blue[600],
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(25.0, 0, 25.0, 0),
              child: Container(
                height: screenHeight,
                width: screenWidth,
                //color: Colors.blue[800],
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          SizedBox(
                            height: 60.0,
                          ),
                          Row(
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                color: Colors.blue[700],
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Container(
                                height: 50,
                                width: 100,
                                color: Colors.blue[700],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 125.0,
                          ),
                          Container(
                            width: 230.0,
                            height: 160,
                            color: Colors.blue[700],
                          ),
                          SizedBox(
                            height: 60.0,
                          ),
                          Container(
                            height: 50,
                            width: screenWidth,
                            color: Colors.blue[600],
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Container(
                            height: 50,
                            width: 300,
                            color: Colors.blue[600],
                          ),
                          SizedBox(
                            height: 5.0,
                          ),
                          Container(
                            height: 50,
                            width: 200,
                            color: Colors.blue[600],
                          ),
                          SizedBox(
                            height: 60.0,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(children: [
                        Container(
                          alignment: Alignment.topLeft,
                          height: 50,
                          width: 150,
                          color: Colors.yellow[600],
                        ),
                        Container(
                          width: screenWidth,
                          height: 50.0,
                          color: Colors.blue[600],
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Container(
                          width: screenWidth,
                          height: 50.0,
                          color: Colors.blue[600],
                        ),
                      ]),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
