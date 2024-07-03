import 'dart:io';

import '../../../core/enums/goal_type.dart';

class GoalEntity {
  GoalEntity({
    required this.goal,
    required this.motivation,
    required this.reward,
    required this.deadline,
    required this.goalType,
    this.image,
    String? id,
    DateTime? createdAt,
    DateTime? updatedAt,
  })  : createdAt = createdAt ?? DateTime.now(),
        updatedAt = updatedAt ?? DateTime.now(),
        id = id ?? DateTime.now().microsecondsSinceEpoch.toString();

  final String id;
  final String goal;
  final String motivation;
  final String reward;
  final File? image;
  final DateTime deadline;
  final GoalType goalType;
  final DateTime createdAt;
  final DateTime updatedAt;

  GoalEntity copyWith({
    String? id,
    String? goal,
    String? motivation,
    String? reward,
    File? image,
    DateTime? deadline,
    GoalType? goalType,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) {
    return GoalEntity(
      id: id ?? this.id,
      goal: goal ?? this.goal,
      motivation: motivation ?? this.motivation,
      reward: reward ?? this.reward,
      image: image ?? this.image,
      deadline: deadline ?? this.deadline,
      goalType: goalType ?? this.goalType,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is GoalEntity &&
        other.id == id &&
        other.goal == goal &&
        other.motivation == motivation &&
        other.reward == reward &&
        other.image == image &&
        other.deadline == deadline &&
        other.goalType == goalType &&
        other.createdAt == createdAt &&
        other.updatedAt == updatedAt;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        goal.hashCode ^
        motivation.hashCode ^
        reward.hashCode ^
        image.hashCode ^
        deadline.hashCode ^
        goalType.hashCode ^
        createdAt.hashCode ^
        updatedAt.hashCode;
  }

  @override
  String toString() {
    return 'GoalEntity(id: $id, goal: $goal, motivation: $motivation, reward: $reward, deadline: $deadline, goalType: $goalType, createdAt: $createdAt, updatedAt: $updatedAt)';
  }
}
