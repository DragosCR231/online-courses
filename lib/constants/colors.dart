import 'package:flutter/material.dart';

class AppColors {
  static const Color primaryBlue = Color(0xFF4C6FFF);
  static const Color darkBlue = Color(0xFF3B3DBF);
  static const Color lightBlue = Color(0xFFE8EDFF);
  static const Color accentOrange = Color(0xFFFF8A65);
  static const Color accentPurple = Color(0xFFB388FF);
  static const Color lightPurple = Color(0xFFF3E5F5);
  static const Color greenAccent = Color(0xFF66BB6A);
  static const Color background = Color(0xFFF5F7FA);
  static const Color cardWhite = Color(0xFFFFFFFF);
  static const Color textDark = Color(0xFF2D3142);
  static const Color textGrey = Color(0xFF9E9E9E);
  static const Color textLight = Color(0xFFBDBDBD);
  static const Color progressBg = Color(0xFFE0E0E0);

  static const LinearGradient primaryGradient = LinearGradient(
    colors: [Color(0xFF4C6FFF), Color(0xFF6C63FF)],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );

  static const LinearGradient headerGradient = LinearGradient(
    colors: [Color(0xFF4C6FFF), Color(0xFF3B3DBF)],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );
}
