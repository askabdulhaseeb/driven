import 'dart:math';

import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_network_image.dart';
import '../../domain/goal_entity.dart';

class GoalDisplayWidget extends StatelessWidget {
  const GoalDisplayWidget({required this.goal, super.key});
  final GoalEntity goal;

  @override
  Widget build(BuildContext context) {
    List<String> images = <String>[
      'https://images.unsplash.com/photo-1506748686214-e9df14d4d9d0',
      'https://images.unsplash.com/photo-1517694712202-14dd9538aa97',
      'https://images.unsplash.com/photo-1501594907352-04cda38ebc29',
      'https://images.unsplash.com/photo-1493809842364-78817add7ffb',
      'https://images.unsplash.com/photo-1516979187457-637abb4f9353',
      'https://images.unsplash.com/photo-1517423440428-a5a00ad493e8',
      'https://images.unsplash.com/photo-1504674900247-0877df9cc836',
      'https://images.unsplash.com/photo-1495195134817-aeb325a55b65',
      'https://images.unsplash.com/photo-1491553895911-0055eca6402d',
      'https://images.unsplash.com/photo-1498050108023-c5249f4df085',
      'https://images.unsplash.com/photo-1518770660439-4636190af475',
      'https://images.unsplash.com/photo-1487058792275-0ad4aaf24ca7',
    ];
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: goal.image == null
            ? CustomNetworkImage(
                photoUrl: images[Random().nextInt(images.length)],
              )
            : Image.file(
                goal.image!,
                fit: BoxFit.cover,
              ),
      ),
    );
  }
}
