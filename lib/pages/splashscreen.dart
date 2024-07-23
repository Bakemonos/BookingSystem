import 'package:app/pages/getstarted.dart';
import 'package:app/properties.dart';
import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(const Duration(milliseconds: 2000), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const Getstarted()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(backgroundColor),
        child: Center(
          child: Image.asset(
            width: 230,
            'assets/praetorian.png',
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
