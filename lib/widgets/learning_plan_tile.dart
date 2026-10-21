import 'package:flutter/material.dart';
import '../models/course.dart';
import '../constants/colors.dart';

class LearningPlanTile extends StatelessWidget {
  final LearningPlan plan;

  const LearningPlanTile({Key? key, required this.plan}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          SizedBox(
            width: 40,
            height: 40,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CircularProgressIndicator(
                  value: plan.progress,
                  strokeWidth: 3,
                  backgroundColor: AppColors.progressBg,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    plan.progress > 0.7 ? AppColors.greenAccent : AppColors.primaryBlue,
                  ),
                ),
                Icon(plan.icon, size: 16, color: AppColors.textDark),
              ],
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Text(
              plan.title,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: AppColors.textDark,
              ),
            ),
          ),
          Text(
            '${plan.completed}',
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: AppColors.textDark,
            ),
          ),
          Text(
            '/${plan.total}',
            style: const TextStyle(
              fontSize: 15,
              color: AppColors.textGrey,
            ),
          ),
        ],
      ),
    );
  }
}
