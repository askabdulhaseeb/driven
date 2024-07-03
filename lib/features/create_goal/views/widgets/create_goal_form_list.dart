import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/enums/goal_type.dart';
import '../../../../core/widgets/custom_dropdown.dart';
import '../../../../core/widgets/custom_elevated_button.dart';
import '../../../../core/widgets/custom_textformfield.dart';
import '../providers/create_goal_provider.dart';
import 'create_goal_deadline.dart';

class CreateGoalFormList extends StatelessWidget {
  const CreateGoalFormList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CreateGoalProvider>(
      builder: (BuildContext context, CreateGoalProvider cgPro, _) {
        return Form(
          key: cgPro.formKey,
          child: Column(
            children: <Widget>[
              CustomTextFormField(
                controller: cgPro.goal,
                labelText: 'Goal',
                autoFocus: true,
                validator: (String? value) =>
                    value?.isEmpty ?? false ? 'Please enter a goal' : null,
              ),
              CustomTextFormField(
                controller: cgPro.motivation,
                labelText: 'Motivation',
                maxLines: 5,
                showSuffixIcon: false,
                validator: (String? value) => value?.isEmpty ?? false
                    ? 'Please enter a description'
                    : null,
              ),
              CustomTextFormField(
                controller: cgPro.reward,
                labelText: 'Reward',
                showSuffixIcon: false,
              ),
              CreateGoalDeadline(
                selectedDate: cgPro.selectedDate,
                setDate: cgPro.setDate,
              ),
              const SizedBox(height: 4),
              CustomDropdown<GoalType>(
                title: 'Category',
                items: GoalType.values
                    .map(
                      (GoalType goalType) => DropdownMenuItem<GoalType>(
                        value: goalType,
                        child: Text(goalType.toString().split('.').last),
                      ),
                    )
                    .toList(),
                selectedItem: cgPro.selectedGoalType,
                onChanged: cgPro.setGoalType,
              ),
              const SizedBox(height: 16),
              CustomElevatedButton(
                title: 'Save',
                isLoading: cgPro.isSaving,
                onTap: () => cgPro.onSave(context),
              ),
              const SizedBox(height: 64),
            ],
          ),
        );
      },
    );
  }
}
