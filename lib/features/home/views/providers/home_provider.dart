import 'package:flutter/material.dart';

import '../../domain/goal_entity.dart';
import 'dummy_data.dart';

class HomeProvider extends ChangeNotifier {
  final List<GoalEntity> _goals = dummyGoals;

  List<GoalEntity> get goals => _goals;

  void addGoal(GoalEntity goal) {
    _goals.insert(0, goal);
    notifyListeners();
  }
}
