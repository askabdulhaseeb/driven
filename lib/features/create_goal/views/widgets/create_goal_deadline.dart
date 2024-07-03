import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CreateGoalDeadline extends StatelessWidget {
  const CreateGoalDeadline({
    required this.selectedDate,
    required this.setDate,
    super.key,
  });
  final DateTime? selectedDate;
  final Function(DateTime?) setDate;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            'Deadline',
            style: TextStyle(fontWeight: FontWeight.w300),
          ),
          InkWell(
            onTap: () async {
              final DateTime? picked = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime.now(),
                lastDate: DateTime(2025),
              );
              if (picked != null) {
                setDate(picked);
              }
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              decoration: BoxDecoration(
                border: Border.all(width: 0.6),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      selectedDate == null
                          ? 'Select Date'
                          : DateFormat('MMMM d, yyyy')
                              .format(selectedDate ?? DateTime.now()),
                    ),
                  ),
                  const Icon(Icons.calendar_month),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
