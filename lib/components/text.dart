import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  final String label;
  final double size;
  final FontWeight fontweight;
  final Color color;
  const MyText(
      {super.key,
      required this.label,
      required this.size,
      required this.fontweight,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
        fontFamily: "Poppins",
        fontSize: size,
        fontWeight: fontweight,
        color: color,
      ),
    );
  }
}
