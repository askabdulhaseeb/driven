import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/create_goal_provider.dart';

class CreateGoalImageWidget extends StatelessWidget {
  const CreateGoalImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<CreateGoalProvider>(
      builder: (BuildContext context, CreateGoalProvider cgPro, _) {
        return InkWell(
          onTap: () => cgPro.setSelectedFile(),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: AspectRatio(
              aspectRatio: 4 / 3,
              child: Container(
                color: Colors.yellow[200],
                child: cgPro.selectedFile == null
                    ? const Center(
                        child: Icon(
                          Icons.add_a_photo,
                          size: 48,
                          color: Colors.grey,
                        ),
                      )
                    : Image.file(
                        File(cgPro.selectedFile!.path),
                        fit: BoxFit.cover,
                      ),
              ),
            ),
          ),
        );
      },
    );
  }
}
