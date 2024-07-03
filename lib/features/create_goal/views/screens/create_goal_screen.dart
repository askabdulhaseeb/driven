import 'package:driven/core/widgets/app_logo.dart';
import 'package:flutter/material.dart';

class CreateGoalScreen extends StatelessWidget {
  const CreateGoalScreen({super.key});
  static const String routeName = '/create-goal';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const AppLogo()),
      body: Column(
        children: <Widget>[
          
        ],
      ),
    );
  }
}
