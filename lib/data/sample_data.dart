import 'package:flutter/material.dart';
import '../models/course.dart';

class SampleData {
  static const List<Course> courses = [
    Course(
      title: 'Product Design v1.0',
      instructor: 'Robertson Connie',
      price: 190,
      hours: 16,
      category: 'Design',
      icon: Icons.design_services,
    ),
    Course(
      title: 'Java Development',
      instructor: 'Nguyen Shane',
      price: 190,
      hours: 16,
      category: 'Development',
      icon: Icons.code,
    ),
    Course(
      title: 'Visual Design',
      instructor: 'Bert Pullman',
      price: 250,
      hours: 14,
      category: 'Design',
      icon: Icons.palette,
    ),
    Course(
      title: 'Flutter Mobile Dev',
      instructor: 'Alex Morgan',
      price: 220,
      hours: 20,
      category: 'Development',
      icon: Icons.phone_android,
    ),
    Course(
      title: 'UI/UX Fundamentals',
      instructor: 'Sarah Chen',
      price: 180,
      hours: 12,
      category: 'Design',
      icon: Icons.dashboard,
    ),
    Course(
      title: 'English Language',
      instructor: 'Maria Lopez',
      price: 150,
      hours: 24,
      category: 'Language',
      icon: Icons.language,
    ),
    Course(
      title: 'Watercolor Painting',
      instructor: 'James Wilson',
      price: 170,
      hours: 10,
      category: 'Painting',
      icon: Icons.brush,
    ),
  ];

  static const List<LearningPlan> learningPlans = [
    LearningPlan(
      title: 'Packaging Design',
      completed: 40,
      total: 48,
      icon: Icons.inventory_2_outlined,
    ),
    LearningPlan(
      title: 'Product Design',
      completed: 6,
      total: 24,
      icon: Icons.design_services_outlined,
    ),
  ];

  static List<CourseCategory> categories = [
    const CourseCategory(
      name: 'Language',
      icon: Icons.translate,
      color: Color(0xFFE3F2FD),
    ),
    const CourseCategory(
      name: 'Painting',
      icon: Icons.palette,
      color: Color(0xFFFFF3E0),
    ),
    const CourseCategory(
      name: 'Design',
      icon: Icons.design_services,
      color: Color(0xFFE8F5E9),
    ),
    const CourseCategory(
      name: 'Development',
      icon: Icons.code,
      color: Color(0xFFF3E5F5),
    ),
  ];
}
