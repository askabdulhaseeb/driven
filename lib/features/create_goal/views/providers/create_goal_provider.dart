import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../core/enums/goal_type.dart';

class CreateGoalProvider extends ChangeNotifier {
  // Function
  void onSave(BuildContext context) {}

  void clear() {
    _goal.clear();
    _motivation.clear();
    _reward.clear();
    _selectedDate = null;
    _selectedGoalType = null;
    _selectedFile = null;
    notifyListeners();
  }

  // Setters
  Future<void> setSelectedFile() async {
    ImagePicker picker = ImagePicker();

    XFile? file = await picker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 90,
    );
    if (file == null) return;
    _selectedFile = file;
    notifyListeners();
  }

  void setDate(DateTime? date) {
    if (date == null) return;
    _selectedDate = date;
    notifyListeners();
  }

  void setGoalType(GoalType? goalType) {
    if (goalType == null) return;
    _selectedGoalType = goalType;
    notifyListeners();
  }

  void setIsSaving(bool value) {
    _isSaving = value;
    notifyListeners();
  }

  // Getters
  GlobalKey<FormState> get formKey => _formKey;
  XFile? get selectedFile => _selectedFile;
  TextEditingController get goal => _goal;
  TextEditingController get motivation => _motivation;
  TextEditingController get reward => _reward;
  DateTime? get selectedDate => _selectedDate;
  GoalType? get selectedGoalType => _selectedGoalType;
  bool get isSaving => _isSaving;

  // Controllers
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  XFile? _selectedFile;
  final TextEditingController _goal = TextEditingController();
  final TextEditingController _motivation = TextEditingController();
  final TextEditingController _reward = TextEditingController();
  DateTime? _selectedDate;
  GoalType? _selectedGoalType;
  bool _isSaving = false;
}
