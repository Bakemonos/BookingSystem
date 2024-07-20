import 'package:app/pages/getstarted.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Getstarted(),
      debugShowCheckedModeBanner: false,
    );
  }
}
