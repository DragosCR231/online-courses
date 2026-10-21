import 'package:flutter/material.dart';

class Course {
  final String title;
  final String instructor;
  final double price;
  final int hours;
  final String category;
  final IconData icon;

  const Course({
    required this.title,
    required this.instructor,
    required this.price,
    required this.hours,
    required this.category,
    required this.icon,
  });
}

class LearningPlan {
  final String title;
  final int completed;
  final int total;
  final IconData icon;

  const LearningPlan({
    required this.title,
    required this.completed,
    required this.total,
    required this.icon,
  });

  double get progress => completed / total;
}

class CourseCategory {
  final String name;
  final IconData icon;
  final Color color;

  const CourseCategory({
    required this.name,
    required this.icon,
    required this.color,
  });
}
