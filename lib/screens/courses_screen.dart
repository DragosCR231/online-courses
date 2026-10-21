import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../data/sample_data.dart';
import '../models/course.dart';
import '../widgets/course_card.dart';
import '../widgets/category_card.dart';

class CoursesScreen extends StatefulWidget {
  const CoursesScreen({Key? key}) : super(key: key);

  @override
  State<CoursesScreen> createState() => _CoursesScreenState();
}

class _CoursesScreenState extends State<CoursesScreen> {
  int _selectedTabIndex = 0;
  final List<String> _tabs = ['All', 'Popular', 'New'];
  String _searchQuery = '';

  List<Course> get _filteredCourses {
    List<Course> courses = SampleData.courses;
    if (_searchQuery.isNotEmpty) {
      courses = courses
          .where((c) =>
              c.title.toLowerCase().contains(_searchQuery.toLowerCase()) ||
              c.instructor.toLowerCase().contains(_searchQuery.toLowerCase()))
          .toList();
    }
    if (_selectedTabIndex == 1) {
      courses = courses.where((c) => c.price >= 200).toList();
    } else if (_selectedTabIndex == 2) {
      courses = courses.reversed.toList();
    }
    return courses;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildHeader(),
                const SizedBox(height: 20),
                _buildSearchBar(),
                const SizedBox(height: 24),
                _buildCategories(),
                const SizedBox(height: 28),
                _buildCourseListHeader(),
                const SizedBox(height: 16),
                _buildTabs(),
                const SizedBox(height: 20),
                _buildCourseList(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Course',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: AppColors.textDark,
          ),
        ),
        Container(
          width: 44,
          height: 44,
          decoration: BoxDecoration(
            color: AppColors.lightBlue,
            shape: BoxShape.circle,
            border: Border.all(color: AppColors.primaryBlue.withOpacity(0.3), width: 2),
          ),
          child: const Icon(Icons.person, color: AppColors.primaryBlue, size: 24),
        ),
      ],
    );
  }

  Widget _buildSearchBar() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: AppColors.cardWhite,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          const Icon(Icons.search, color: AppColors.textGrey),
          const SizedBox(width: 12),
          Expanded(
            child: TextField(
              onChanged: (value) => setState(() => _searchQuery = value),
              decoration: const InputDecoration(
                hintText: 'Find Course',
                hintStyle: TextStyle(color: AppColors.textLight),
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(vertical: 14),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: AppColors.primaryBlue,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(Icons.tune, color: Colors.white, size: 20),
          ),
        ],
      ),
    );
  }

  Widget _buildCategories() {
    return SizedBox(
      height: 130,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: SampleData.categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(category: SampleData.categories[index]);
        },
      ),
    );
  }

  Widget _buildCourseListHeader() {
    return const Text(
      'Choice your course',
      style: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: AppColors.textDark,
      ),
    );
  }

  Widget _buildTabs() {
    return Row(
      children: List.generate(_tabs.length, (index) {
        final isSelected = _selectedTabIndex == index;
        return Padding(
          padding: const EdgeInsets.only(right: 12),
          child: GestureDetector(
            onTap: () => setState(() => _selectedTabIndex = index),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
              decoration: BoxDecoration(
                color: isSelected ? AppColors.primaryBlue : Colors.transparent,
                borderRadius: BorderRadius.circular(25),
                border: isSelected
                    ? null
                    : Border.all(color: AppColors.textLight, width: 1),
              ),
              child: Text(
                _tabs[index],
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: isSelected ? Colors.white : AppColors.textGrey,
                ),
              ),
            ),
          ),
        );
      }),
    );
  }

  Widget _buildCourseList() {
    final courses = _filteredCourses;
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: courses.length,
      itemBuilder: (context, index) {
        return CourseCard(course: courses[index]);
      },
    );
  }
}
