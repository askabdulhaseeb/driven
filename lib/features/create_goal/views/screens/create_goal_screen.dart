import 'package:flutter/material.dart';

import '../../../../core/widgets/app_logo.dart';
import '../widgets/create_goal_form_list.dart';
import '../widgets/create_goal_image_widget.dart';

class CreateGoalScreen extends StatelessWidget {
  const CreateGoalScreen({super.key});
  static const String routeName = '/create-goal';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const AppLogo()),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: ListView(
          children: const <Widget>[
            CreateGoalImageWidget(),
            CreateGoalFormList(),
          ],
        ),
      ),
    );
  }
}
