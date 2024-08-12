import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MySystemNavigator extends StatefulWidget {
  final String textTitle;
  final String textContent;
  final String yes;
  final String no;
  final bool exitApp;

  const MySystemNavigator({
    super.key,
    required this.textTitle,
    required this.textContent,
    required this.yes,
    required this.no,
    required this.exitApp,
  });

  @override
  State<MySystemNavigator> createState() => _MySystemNavigatorState();
}

class _MySystemNavigatorState extends State<MySystemNavigator> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(widget.textTitle),
      content: const Text('Do you want to exit ?'),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(false);
          },
          child: Text(widget.yes),
        ),
        TextButton(
          onPressed: () {
            if (widget.exitApp) {
              SystemNavigator.pop();
            } else {
              Navigator.of(context).pop(true);
            }
          },
          child: Text(widget.no),
        ),
      ],
    );
  }
}
