import 'package:app/properties.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(backgroundColor),
      body: Center(
        child: Text(
          'HOME',
          style: TextStyle(fontSize: 24.sp, color: const Color(textColor)),
        ),
      ),
    );
  }
}
