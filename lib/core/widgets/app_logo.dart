import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Theme.of(context).primaryColor,
        ),
        children: const <TextSpan>[
          TextSpan(text: 'DR'),
          TextSpan(text: 'I', style: TextStyle(color: Colors.yellow)),
          TextSpan(text: 'VEN'),
        ],
      ),
    );
  }
}
