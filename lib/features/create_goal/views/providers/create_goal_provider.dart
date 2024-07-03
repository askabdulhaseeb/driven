import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CreateGoalProvider extends ChangeNotifier {
  XFile? _selectedFile;
  TextEditingController _goal = TextEditingController();
  TextEditingController _motivation = TextEditingController();
  TextEditingController _reward = TextEditingController();
  DateTime? _selectedDate;
}
